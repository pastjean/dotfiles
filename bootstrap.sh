

mkdir -p ~/projets

# Install RVM and source it and make 1.9.2 default

cd ~/projets
git clone https://pastjean@github.com/pastjean/dotfiles.git
git submodule init
git submodule update
cd dotfiles
rake

## Copy file
## init vim
## init RVM
##  curl -s https://rvm.beginrescueend.com/install/rvm -o rvm-installer ; chmod +x rvm-installer ; ./rvm-installer --version latest

## init nodejs

