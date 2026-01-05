export NVM_DIR="$HOME/.nvm"

_nvm_lazy_load() {
  unset -f nvm node npm
  
  if [ -s "$NVM_DIR/nvm.sh" ]; then
    . "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
  elif [ -s "/opt/homebrew/opt/nvm/nvm.sh" ]; then
    . "/opt/homebrew/opt/nvm/nvm.sh"
    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
  elif [ -s "/usr/local/opt/nvm/nvm.sh" ]; then
    . "/usr/local/opt/nvm/nvm.sh"
    [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
  fi

  # Invoke the command that triggered the lazy load
  if [ "$1" != "_nvm_lazy_load" ]; then
    "$@"
  fi
}

nvm() { _nvm_lazy_load "nvm" "$@"; }
node() { _nvm_lazy_load "node" "$@"; }
npm() { _nvm_lazy_load "npm" "$@"; }
