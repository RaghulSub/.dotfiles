#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
export PS1='\[\e[0;32m\]\u@\h \[\e[0;34m\]\w\[\e[0m\]/ $ '


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/raghul/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/home/raghul/miniconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/raghul/miniconda3/etc/profile.d/conda.sh"
#    else
#        export PATH="/home/raghul/miniconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

source /usr/share/nvm/init-nvm.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
# export SDKMAN_DIR="$HOME/.sdkman"
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# >>> Source Starts >>>

if [ -f "$HOME/.dotfiles/bash/scripts/bash_sources.sh" ]; then
    . "$HOME/.dotfiles/bash/scripts/bash_sources.sh"
fi

# Starship config
eval "$(starship  init bash)"

export STARSHIP_CONFIG="~/.config/starship/starship.toml"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion




### --- Useful Cmdline tools --- ###

# Activating the `zoxide` tool for directory navigation ( better than `cd` )
# Check if the zoxide tool is available
if command -v /bin/zoxide &>/dev/null; then
    eval "$(zoxide init bash)"
fi

# Initialing TheFuck
if command -v /bin/thefuck &>/dev/null; then
    eval $(thefuck --alias)
fi

# Activating the `fzf` tool for fuzzy search
# Check if the fzf tool is available
if command -v /bin/fzf &>/dev/null; then
    eval "$(fzf --bash)"
fi
