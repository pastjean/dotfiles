#!/bin/sh

DIR=$HOME/.homebrew
mkdir -p $DIR
curl -L https://github.com/mxcl/homebrew/tarball/master | tar xvz --strip 1 -C $DIR


export PATH=~/$DIR/bin:$PATH


brew install wget
brew install git
# brew install macvim
# closure-compiler
# android-sdk
# android-ndk
# clojure
# clojure-contrib
# ctags
# rlwrap

echo "add $DIR/bin to your path"
