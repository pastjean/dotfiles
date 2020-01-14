#!/bin/env bash

if [[ ! -d ~/.brew ]];then
  mkdir -p ~/.brew
  curl -L https://github.com/Homebrew/brew/tarball/master | tar xvz --strip 1 -C ~/.brew

  echo 'export PATH=~/.brew/bin:$PATH' >> .localrc
  export PATH=~/.brew/bin:$PATH
else
  echo "- Homebrew already installed"
fi
