
# Set rbenv in path
export PATH="$HOME/.rbenv/bin:$PATH"
# Make a cache trick to make shell load a little faster
rbenv_cache="$HOME/.rbenv-init-zsh"
if [ "$(command -v rbenv)" -nt "$rbenv_cache" -o ! -s "$rbenv_cache" ]; then
  rbenv init - >| "$rbenv_cache"
fi
source "$rbenv_cache"
unset rbenv_cache
