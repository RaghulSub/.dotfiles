# OS-Specific Configurations
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS specific settings
    alias ls='ls -G' # Colorized ls on macOS
    export HOMEBREW_NO_ANALYTICS=1
    # Add Homebrew to path if it exists
    if [[ -f /opt/homebrew/bin/brew ]]; then
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
elif [[ -f /etc/arch-release ]]; then
    # Arch Linux specific settings
    alias ls='ls --color=auto'
    alias pac="sudo pacman -S"
    alias pacu="sudo pacman -Syu"
fi

# Common Aliases
alias ll='ls -al'
alias grep='grep --color=auto'
