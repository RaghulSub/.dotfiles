#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
export PS1='\[\e[0;32m\]\u@\h:\[\e[0;34m\]\w\[\e[0m\]\$ '


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# MiniConda initialization
if [ -f "$HOME/.dotfiles/bash/scripts/miniconda.sh" ]; then
    . "$HOME/.dotfiles/bash/scripts/miniconda.sh"
fi
# <<< conda initialize <<<

source /usr/share/nvm/init-nvm.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# >>> Source Starts >>>

if [ -f "$HOME/.dotfiles/bash/scripts/bash_sources.sh" ]; then
    . "$HOME/.dotfiles/bash/scripts/bash_sources.sh"
fi

# <<< Source Ends <<<
. "$HOME/.cargo/env"

# Starship config
eval "$(starship  init bash)"

# export STARSHIP_CONFIG="~/.config/starship/starship.toml"
