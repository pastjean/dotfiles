#!/bin/sh

DIR=$HOME/.brew
mkdir -p $DIR
curl -L https://github.com/mxcl/homebrew/tarball/master | tar xvz --strip 1 -C $DIR

echo 'export PATH=$DIR/bin:$PATH' >> .localrc
export PATH=$DIR/bin:$PATH

brew install wget
