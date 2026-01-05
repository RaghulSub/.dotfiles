# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!

_conda_lazy_load(){
    # Check for common install locations
    if [ -d "$HOME/miniconda3" ]; then
        __conda_path="$HOME/miniconda3"
    elif [ -d "$HOME/anaconda3" ]; then
        __conda_path="$HOME/anaconda3"
    elif [ -d "/opt/miniconda3" ]; then
        __conda_path="/opt/miniconda3"
    else
        # Fallback or exit if not found
        return 1
    fi

    if command -v "$__conda_path/bin/conda" &> /dev/null; then
        unset -f conda
        __conda_setup="$("$__conda_path/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)"
        if [ $? -eq 0 ]; then
            eval "$__conda_setup"
        else
            if [ -f "$__conda_path/etc/profile.d/conda.sh" ]; then
                . "$__conda_path/etc/profile.d/conda.sh"
            else
                export PATH="$__conda_path/bin:$PATH"
            fi
        fi
        unset __conda_setup
        unset __conda_path
        conda "$@"
    fi
}

conda () {
    _conda_lazy_load "$@"
}
# <<< conda initialize <<<
