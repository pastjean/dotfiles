
mkdir -p ~/bin
mkdir -p ~/projets

# Install RVM and source it and make 1.9.2 default

cd ~/projets
if [[ ! -a dotfiles ]] 
then
  git clone https://pastjean@github.com/pastjean/dotfiles.git dotfiles  
fi;

if [[ ! -d dotfiles ]]
then
  echo "dotfiles is not a dir ... what are you doing"
  exit 1
fi;

cd dotfiles

## Link files
for file in $(ls -A | egrep -v "\.git/|\.gitignore|bootstrap|README.md|Rakefile";ls -A bin/*)
do
 if [[ $(find -L ~ -maxdepth 1 -xtype l -samefile $file -print) != "" ]]
 then
    echo "identical $file"
  else
    echo "link $file to ~/$file"
#   ln -S .bak -ibs `pwd`/$file ~/$file
 fi;
done

## init RVM
#bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)

echo "Thoses are the file that were possibly replaced in the process!!! look at them"
find ~ -maxdepth 1 -name \*.bak
find ~/bin -maxdepth 1 -name \*.bak

