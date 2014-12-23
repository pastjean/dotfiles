#!/usr/bin/env bash

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

chsh -s /bin/zsh

echo "Restart your shell buddy"

/usr/bin/env zsh
source ~/.zshrc
