# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!

_conda_lazy_load(){
    # Check for common install locations
    local candidates=(
        "$HOME/miniconda3"
        "$HOME/anaconda3"
        "$HOME/.miniconda3"
        "/opt/miniconda3"
        "/opt/anaconda3"
        "/opt/homebrew/anaconda3"
        "/opt/homebrew/miniconda3"
        "/opt/homebrew/Caskroom/miniconda/base"
        "/opt/homebrew/Caskroom/anaconda/base"
    )

    __conda_path=""
    for path in "${candidates[@]}"; do
        if [ -d "$path" ]; then
            __conda_path="$path"
            break
        fi
    done

    # Fallback to PATH check if not found in candidates
    if [ -z "$__conda_path" ]; then
        unset -f conda
        if command -v conda >/dev/null 2>&1; then
            conda "$@"
            return
        else
            echo "Error: Conda installation not found in common locations." >&2
            return 1
        fi
    fi

    if command -v "$__conda_path/bin/conda" &> /dev/null; then
        unset -f conda
        
        # Ensure standard tools are found in PATH during this function execution
        # avoiding issues with weird PATH states
        local _sys_path="/usr/bin:/bin:/usr/sbin:/sbin"
        local saved_path="$PATH"
        export PATH="$_sys_path:$PATH"

        # Prefer sourcing conda.sh directly if available
        if [ -f "$__conda_path/etc/profile.d/conda.sh" ]; then
            # Create a temporary patched version of conda.sh
            # This fixes the "command not found: dirname" issue by replacing \dirname with /usr/bin/dirname
            local temp_conda_script=$(mktemp)
            cat "$__conda_path/etc/profile.d/conda.sh" | sed 's/\\dirname/\/usr\/bin\/dirname/g' > "$temp_conda_script"
            
            # Source the patched script
            . "$temp_conda_script"
            
            # Clean up
            rm "$temp_conda_script"
            
            conda activate base
        else
            __conda_setup="$("$__conda_path/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)"
            
            # Fix for "command not found: dirname" issue
            # Replace \dirname with /usr/bin/dirname
            __conda_setup=$(echo "$__conda_setup" | sed 's/\\dirname/\/usr\/bin\/dirname/g')

            if [ $? -eq 0 ]; then
                eval "$__conda_setup"
            else
                export PATH="$__conda_path/bin:$saved_path"
            fi
        fi
        
        # Restore PATH if we modified it, but keep the additions made by conda
        # Note: conda modifies PATH, so we can't just restore saved_path strictly if conda succeeded.
        # But for 'conda activate', it modifies the current shell's environment variables directly.
        
        # Since 'conda activate' runs in the current shell context (sourced),
        # we don't need to manually mess with PATH much, but we should be careful not to lose the sys_path fix if needed?
        # Actually, best to just let the function return, the 'local' export changes to PATH inside the function 
        # might persist if we are not careful? No, 'local' variables are local, but 'export' affects the process.
        # But changes to exported vars in zsh functions usually persist.
        # However, we only prepended sys_path. conda activate will prepend its own paths.
        
        unset __conda_setup
        unset __conda_path
        
        # We need to run the requested command
        conda "$@"
    fi
}

conda () {
    _conda_lazy_load "$@"
}
# <<< conda initialize <<<
