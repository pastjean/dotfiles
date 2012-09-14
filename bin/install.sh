#!/bin/bash
DIR="$( cd $( dirname $0 ) && pwd )"
DESTINATION=$HOME

short() {
  echo "~${1#$HOME}"
}

# If we are testing dont execute for real just echo some things
if [[ "$@" =~ "test" ]];then
  echo "Testing......"
  install() {
    echo "Testing install $@"
  }
  link() {
    echo "Testing linking $@"
  }
else
  install() {
    # ln   $@
    echo "running $@"
    bash "$@"
  }
  link() {
    LILL1=$(short "$1")
    LILL2=$(short "$2")
    echo "linking $LILL1 to $LILL2"
    ln -s "$1" "$2" 
  }
fi


FILES=$( ls $DIR/* | grep -viE 'install.sh' )

