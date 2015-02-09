#!/bin/env bash

if [[ $(uname) == "Darwin" ]];then

  if [[ ! -d ~/.brew ]];then
    mkdir -p ~/.brew
    curl -L https://github.com/mxcl/homebrew/tarball/master | tar xvz --strip 1 -C ~/.brew

    echo 'export PATH=~/.brew/bin:$PATH' >> .localrc
    export PATH=~/.brew/bin:$PATH
  else
    echo "- Homebrew already installed"
  fi

  # Test for apple command line tools
  # should be in /Library/Developer/CommandLineTools/usr/bin/
  if [[ ! -d "/Library/Developer/CommandLineTools/usr/bin/" ]];then
    xcode-select --install
  else
    echo "- Command line tools already installed (compiler)"
  fi
else
  echo "- Homebrew is not needed if you're not on OSX"
  exit
fi

echo "Run the brew script if you want to install more tools $DOTFILES_DIR/brew/brew"
