_pyenv_lazy_load() {
    if command -v pyenv > /dev/null 2>&1; then  
        export PYENV_ROOT="$HOME/.pyenv"
        export PATH="$PYENV_ROOT/bin:$PATH"
        eval "$(pyenv init --path)"
        eval "$(pyenv init -)"
        eval "$(pyenv virtualenv-init -)"

        unset -f _pyenv_lazy_load
        unset -f pyenv

        pyenv "$@"
    fi
}
pyenv () {
    _pyenv_lazy_load "$@"
}