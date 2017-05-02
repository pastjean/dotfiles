#!/bin/bash

DIR="$( cd $( dirname $0 ) && pwd )"
DESTINATION=$HOME/.config/fish

mkdir -p $DESTINATION
rm -rf $DESTINATION/config.fish
ln -s $DIR/config.fish $DESTINATION/config.fish

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
