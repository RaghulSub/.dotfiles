# Set up pyenv environment variables
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

# Lazy loading for pyenv - only initialize when actually needed
_pyenv_lazy_init() {
    if command -v pyenv >/dev/null 2>&1; then
        # Remove the wrapper functions
        unset -f pyenv python pip _pyenv_lazy_init
        
        # Initialize pyenv properly
        eval "$(pyenv init --path)"
        eval "$(pyenv init -)"
        eval "$(pyenv virtualenv-init -)"
    fi
}

# Wrapper function for pyenv
pyenv() {
    _pyenv_lazy_init
    pyenv "$@"
}

# Wrapper function for python (optional - only if you want python to trigger pyenv)
python() {
    _pyenv_lazy_init
    python "$@"
}

# Wrapper function for pip (optional - only if you want pip to trigger pyenv)
pip() {
    _pyenv_lazy_init
    pip "$@"
}
