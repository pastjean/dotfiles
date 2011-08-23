#!/bin/sh

DIR=$HOME/.homebrew
mkdir -p $DIR
curl -L https://github.com/mxcl/homebrew/tarball/master | tar xvz --strip 1 -C $DIR


export PATH=~/$DIR/bin:$PATH


brew install wget
brew install git
# brew install macvim

echo "add $DIR/bin to your path"
