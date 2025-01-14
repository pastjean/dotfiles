# dotfiles

Your preferences should be kept in your pocket like you care for them.

## Install

```sh
xcode-select --install
git clone git@github.com:pastjean/dotfiles.git "$HOME/.dotfiles"
cd $HOME/.dotfiles

# link files
bash install.sh

# Homebrew and all it's apps
# cmd from brew.sh 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Follow steps from script then brew.sh
brew bundle

# Set up fish shell
which fish | sudo tee -a /etc/shells
chsh -s $(which fish)

# Fish it up
fish installs/fish_install.fish

```

# Manual installs

- Wireguard (app store)
- 1password (1password.com/download)
