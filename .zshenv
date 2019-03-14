NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$HOME/.rbenv/bin:$NPM_PACKAGES/bin:/usr/local/go/bin:$PATH"
eval "$(rbenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
