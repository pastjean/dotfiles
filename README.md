# dotfiles

Your preferences should be kept in your pocket like you care for them.

## Install

```sh
xcode-select --install
git clone git@github.com:pastjean/dotfiles.git "$HOME/.dotfiles"
cd $HOME/.dotfiles
bash install.sh

cd installs
bash brew_install.sh

$HOME/.brew/bin/brew bundle

which fish | sudo tee -a /etc/shells
chsh -s $(which fish)

fish installs/fish_install.fish

```

# Manual installs

- Wireguard
- istatsmenu
- tweetbot
