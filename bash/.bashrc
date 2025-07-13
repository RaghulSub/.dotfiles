#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
export PS1='\[\e[0;32m\]\u@\h \[\e[0;34m\]\w\[\e[0m\]/ $ '


# >>> conda initialize >>>

if [ -f "$HOME/.dotfiles/bash/scripts/miniconda.sh" ]; then
    . "$HOME/.dotfiles/bash/scripts/miniconda.sh"
fi


# >>> Source Starts >>>

if [ -f "$HOME/.dotfiles/bash/scripts/bash_sources.sh" ]; then
    . "$HOME/.dotfiles/bash/scripts/bash_sources.sh"
fi

# Starship config
eval "$(starship  init bash)"
export STARSHIP_CONFIG="~/.config/starship/starship.toml"



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





