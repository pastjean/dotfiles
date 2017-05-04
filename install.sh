#!/usr/bin/env bash

echo ""
echo '         88                          ad88  88  88                       '
echo '         88                ,d       d8"    ""  88                       '
echo '         88                88       88         88                       '
echo ' ,adPPYb,88   ,adPPYba,  MM88MMM  MM88MMM  88  88   ,adPPYba,  ,adPPYba,'
echo 'a8"    `Y88  a8"     "8a   88       88     88  88  a8P_____88  I8[    ""'
echo '8b       88  8b       d8   88       88     88  88  8PP"""""""   `"Y8ba, '
echo '"8a,   ,d88  "8a,   ,a8"   88,      88     88  88  "8b,   ,aa  aa    ]8I'
echo ' `"8bbdP"Y8   `"YbbdP"`    "Y888    88     88  88   `"Ybbd8"`  `"YbbdP" '
echo ""
echo ""

DOTFILES_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

link() {
    echo "Linking $1 to $2"
    ln -sf $1 $2
}

mkdir -p $HOME/.config/fish
link $DOTFILES_DIR/.config/fish/config.fish $HOME/.config/fish/config.fish
link $DOTFILES_DIR/.vim $HOME/.vim
link $DOTFILES_DIR/.gitconfig $HOME/.gitconfig
link $DOTFILES_DIR/.gitmessage $HOME/.gitmessage
link $DOTFILES_DIR/.hgignore $HOME/.hgignore
link $DOTFILES_DIR/.hgrc $HOME/.hgrc
link $DOTFILES_DIR/.hyper.js $HOME/.hyper.js
link $DOTFILES_DIR/.irbrc $HOME/.irbrc
link $DOTFILES_DIR/.tmux.conf $HOME/.tmux.conf
link $DOTFILES_DIR/.vimrc $HOME/.vimrc

echo "Done..."
echo "All dotfiles are now linked, your are good to go"
echo ""