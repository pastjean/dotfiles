#!/usr/bin/env bash

# rbenv
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv

cat << EOF >> "$HOME/.localrc"
# Set rbenv in path
export PATH="$HOME/.rbenv/bin:$PATH"
# Make a cache trick to make shell load a little faster
rbenv_cache="$HOME/.rbenv-init-zsh"
if [ "$(command -v rbenv)" -nt "$rbenv_cache" -o ! -s "$rbenv_cache" ]; then
    rbenv init - >| "$rbenv_cache"
fi
source "$rbenv_cache"
unset rbenv_cache
EOF

# ruby-build
mkdir -p ~/.rbenv/plugins
cd ~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git

# oh my zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
chsh -s /bin/zsh

echo "Restart your shell buddy"

/usr/bin/env zsh
source ~/.zshrc
