# Basic Zsh Options
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
setopt HIST_IGNORE_ALL_DUPS  # Don't record dupes in history
setopt SHARE_HISTORY         # Share history between sessions
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Colors
autoload -U colors && colors
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad
