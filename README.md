# dotfiles

Your preferences should be kept in your pocket like you care for them.

## Install

```sh
xcode-select --install
git clone git@github.com:pastjean/dotfiles.git "$HOME/.dotfiles"
cd $HOME/.dotfiles
bash install.sh
bash installs/brew_install.sh
fish installs/fish_install.fish
```

## Software to install

```sh
// brew tap adoptopenjdk/openjdk
// brew cask install adoptopenjdk11

brew install fish \
             zoxide \
             n \
             git \
             golang \
             rbenv

brew cask install \
    1password \
    alacritty \
    amethyst \
    blender \
    chai \
    firefox \
    flux \
    handbrake \
    kap \
    microsoft-edge \
    monodraw \
    muzzle \
    obs \
    openemu \
    openscad \
    prusaslicer \
    sketch \
    spotify \
    telegram \
    transmission \
    visual-studio-code \
    vlc

# Work Stuff
brew cask install \
    zoomus \
    slack
```

```fish
which fish | sudo tee -a /etc/shells
chsh -s (which fish)
```

# Manual

- Wireguard
- istatsmenu
- tweetbot
