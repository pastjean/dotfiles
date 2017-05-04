#!/usr/bin/env bash

# rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

# ruby-build
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# add rbenv to shell (copy the file but this must be coded)

cat << EOF >> $HOME/.local.fish
set PATH $HOME/.rbenv/bin $PATH
status --is-interactive; and . (rbenv init -|psub)
EOF
