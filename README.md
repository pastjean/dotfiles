# dotfiles

Your preferences should be kept in your pocket like you care for them.

## Install

```sh
xcode-select --install
git clone git@github.com:pastjean/dotfiles.git "$HOME/.dotfiles"
cd $HOME/.dotfiles
bash install.sh
bash installs/brew_install.sh
export PATH=$HOME/.brew/bin:$PATH

fish installs/fish_install.fish
```

## Software to install

```sh
brew install fish \
             zoxide \
             n \
             golang \
             rbenv

brew install homebrew/cask/1password \
    homebrew/cask/alacritty \
    homebrew/cask/amethyst \
    homebrew/cask/blender \
    homebrew/cask/chai \
    homebrew/cask/firefox \
    homebrew/cask/flux \
    homebrew/cask/handbrake \
    homebrew/cask/kap \
    homebrew/cask/microsoft-edge \
    homebrew/cask/monodraw \
    homebrew/cask/muzzle \
    homebrew/cask/obs \
    homebrew/cask/openemu \
    homebrew/cask/openscad \
    homebrew/cask/prusaslicer \
    homebrew/cask/sketch \
    homebrew/cask/spotify \
    homebrew/cask/telegram \
    homebrew/cask/transmission \
    homebrew/cask/visual-studio-code \
    homebrew/cask/vlc
```

```fish
which fish | sudo tee -a /etc/shells
chsh -s $(which fish)
```

# Manual

- Wireguard
- istatsmenu
- tweetbot
