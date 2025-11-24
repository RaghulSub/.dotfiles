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

# >>> pyenv lazy loading >>>
if [ -f "$HOME/.dotfiles/bash/scripts/pyenv.sh" ]; then
  . "$HOME/.dotfiles/bash/scripts/pyenv.sh"
fi

# >>> nvm lazy loading
if [ -f "$HOME/.dotfiles/bash/scripts/nvm.sh" ]; then
  . "$HOME/.dotfiles/bash/scripts/nvm.sh"
fi

# Starship config
eval "$(starship init bash)"
export STARSHIP_CONFIG="~/.config/starship/starship.toml"

### --- Useful Cmdline tools --- ###

# Check if the zoxide tool is available
if command -v zoxide &>/dev/null; then
  eval "$(zoxide init bash)"
fi

# Lazy loading thefuck
if [ -f "$HOME/.dotfiles/bash/scripts/thefuck.sh" ]; then
  . "$HOME/.dotfiles/bash/scripts/thefuck.sh"
fi

# Check if the fzf tool is available
if command -v fzf &>/dev/null; then
  eval "$(fzf --bash)"
fi
