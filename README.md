# dotfiles

Your preferences should be kept in your pocket like you care for them.

## Nice stuff to backup


- OpenVPN profiles
- SSH keys
- PGP keys
- ...

## Install

```sh
xcode-select --install
git clone git@github.com:pastjean/dotfiles.git "$HOME/.dotfiles"
cd $HOME/.dotfiles
bash install.sh
bash brew_install.sh
bash fish_install.sh
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

# Manual

- Slack
- Keynote
- Wireguard
- istatsmenu
- tweetbot
