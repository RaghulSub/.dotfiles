# Environment variables

export EDITOR='vim'
export PATH=$HOME/bin:/usr/local/bin:$PATH

if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS specific paths
    export PATH=$PATH:/opt/homebrew/bin
fi
