
mkdir -p ~/bin
mkdir -p ~/projets

# Install RVM and source it and make 1.9.2 default

cd ~/projets
if [[ -a dotfiles ]] then
  echo "dotfile already exists ... not cloning"
else
  git clone https://pastjean@github.com/pastjean/dotfiles.git dotfiles  
fi;
if [[! -d dotfiles ]] then
  echo "dotfiles is not a dir ... what are you doing"
  exit 1
fi;

## Link files
for file in `ls -A | egrep -v "\.git/|\.gitignore|bootstrap|README.md|Rakefile";ls -A bin/*`
do
  ln -S .bak -ibs `pwd`/$file ~/$file
done

## init RVM
bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)

