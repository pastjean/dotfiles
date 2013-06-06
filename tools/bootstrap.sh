# Thanks to oh-my-zsh for a hint on the bootstraping

REPO="https://github.com/pastjean/dotfiles"

if [[ $DESTINATION_DIR == "" ]]
then
  DESTINATION_DIR="$HOME/.dotfiles"
fi;


if [ -d $DOTFILES_DIR ]
then
  echo "You already have some dotfiles installed. You dont really need a second one."
  exit
fi

echo "Cloning dotfiles..."
hash git >/dev/null && /usr/bin/env git clone $REPO $DOTFILES_DIR || {
  echo "git not installed"
  exit
}

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
echo "....is now bootstrapped."
echo "To install run:"  
echo "                bash $DOTFILES_DIR/install.sh"  
  
  
  
  
  
 
