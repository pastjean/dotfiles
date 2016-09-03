#!/usr/bin/env bash

# rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

# ruby-build
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# add rbenv to shell (copy the file but this must be coded)

cat << EOF >> $HOME/.localrc

# Set rbenv in path
export PATH="\$HOME/.rbenv/bin:\$PATH"
# Make a cache trick to make shell load a little faster
rbenv_cache="\$HOME/.rbenv-init-zsh"
if [ "\$(command -v rbenv)" -nt "\$rbenv_cache" -o ! -s "\$rbenv_cache" ]; then
  rbenv init - >| "\$rbenv_cache"
fi
source "\$rbenv_cache"
unset rbenv_cache

EOF
