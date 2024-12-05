# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if command -v /home/raghul/miniconda3/bin/conda &> /dev/null; then
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
fi
# <<< conda initialize <<<