#!/bin/bash
DIR="$( cd "$( dirname "$0" )/.." && pwd )"
DESTINATION=$HOME

#Fish Special configuration
FISHDEST=$DESTINATION/.config/fish
mkdir -p $FISHDEST
ln -s $DIR/fish/config.fish $FISHDEST/config.fish
