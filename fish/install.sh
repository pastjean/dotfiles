#!/bin/bash

DIR="$( cd $( dirname $0 ) && pwd )"
DESTINATION=$HOME/.config/fish

mkdir -p $DESTINATION
ln $DIR/config.fish $DESTINATION/config.fish
