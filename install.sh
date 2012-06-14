#!/bin/bash
DIR="$( cd $( dirname $0 ) && pwd )"
DESTINATION=$HOME

echo $DIR
#Fish Special configuration
FISHDEST=$DESTINATION/.config/fish
mkdir -p $FISHDEST
ln -s $DIR/fish/config.fish $HOME/.config/fish/config.fish
