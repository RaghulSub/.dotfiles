#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

ZSH="$HOME/.dotfiles/zsh"

# Source modular scripts
[ -f "$ZSH/scripts/options.sh" ] && . "$ZSH/scripts/options.sh"
[ -f "$ZSH/scripts/aliases.sh" ] && . "$ZSH/scripts/aliases.sh"
[ -f "$ZSH/scripts/tools.sh" ] && . "$ZSH/scripts/tools.sh"

# >>> conda initialize >>>
if [ -f "$ZSH/scripts/miniconda.sh" ]; then
  . "$ZSH/scripts/miniconda.sh"
fi

# >>> Source Starts >>>
if [ -f "$ZSH/scripts/bash_sources.sh" ]; then
  . "$ZSH/scripts/bash_sources.sh"
fi

# >>> pyenv lazy loading >>>
if [ -f "$ZSH/scripts/pyenv.sh" ]; then
  . "$ZSH/scripts/pyenv.sh"
fi

# >>> nvm lazy loading
if [ -f "$ZSH/scripts/nvm.sh" ]; then
    . "$ZSH/scripts/nvm.sh"
fi

# Lazy loading thefuck
if [ -f "$ZSH/scripts/thefuck.sh" ]; then
  . "$ZSH/scripts/thefuck.sh"
fi

``
