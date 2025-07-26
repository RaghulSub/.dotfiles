# # Simplified pyenv lazy loading
# # Only initialize when pyenv is actually used

# _pyenv_init_once() {
#     # Set up pyenv environment
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    
    # Initialize pyenv
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
    
    # Replace the wrapper with the real pyenv function
#     unset -f pyenv
#     unset -f _pyenv_init_once
    
#     # Now call pyenv with the original arguments
#     pyenv "$@"
# }

# # Create a wrapper function that initializes pyenv on first use
# pyenv() {
#     _pyenv_init_once "$@"
# }