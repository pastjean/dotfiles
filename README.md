# dotfiles

Your preferences should be kept in your pocket like you care for them.

## Nice stuff to backup


- OpenVPN profiles
- SSH keys
- PGP keys
- ...

## Install

```sh
xcode-select --install # needed for git
git clone git@github.com:pastjean/dotfiles.git "$HOME/.dotfiles"
cd $HOME/.dotfiles
bash install.sh
bash brew_install.sh
bash fish_install.sh
```

## Software to install

```sh
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk11

brew install fish \
             zoxide \
             n \
             git \
             kubectl \
             golang \
             rbenv

brew cask install \
    1password \
    alacritty \
    amethyst \
    blender \
    chai \
    docker \
    firefox \
    flux \
    handbrake \
    homebrew/cask-versions/firefox-developer-edition \
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
    viscosity \
    zoomus \
    intellij-idea-ce

```

# Manual

- Slack
- Keynote
- Wireguard
- istatsmenu
- tweetbot
