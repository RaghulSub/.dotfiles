# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!

_conda_lazy_load(){
    if command -v /home/raghul/miniconda3/bin/conda &> /dev/null; then
        unset -f conda
        __conda_setup="$('/home/raghul/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
        if [ $? -eq 0 ]; then
            eval "$__conda_setup"
        else
            if [ -f "/home/raghul/miniconda3/etc/profile.d/conda.sh" ]; then
                . "/home/raghul/miniconda3/etc/profile.d/conda.sh"
            else
                export PATH="/home/raghul/miniconda3/bin:$PATH"
            fi
        fi
        unset __conda_setup
        conda "$@"
    fi
}

conda () {
    _conda_lazy_load "$@"
}
# <<< conda initialize <<<
