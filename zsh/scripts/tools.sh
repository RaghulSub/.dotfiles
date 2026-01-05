# Starship config
if command -v starship &>/dev/null; then
    export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
    eval "$(starship init zsh)"
fi

### --- Useful Cmdline tools --- ###

# Check if the zoxide tool is available
if command -v zoxide &>/dev/null; then
  eval "$(zoxide init zsh)"
fi

# Check if the fzf tool is available
if command -v fzf &>/dev/null; then
  eval "$(fzf --zsh)"
fi
