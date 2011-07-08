mkdir -p ~/projets

# Install RVM and source it and make 1.9.2 default

cd ~/projets
git clone https://pastjean@github.com/pastjean/dotfiles.git
git submodule update
cd dotfiles
rake

## init git
## init vim
## init ruby
## init nodejs

