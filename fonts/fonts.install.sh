DIR=$(dirname $0)
DESTINATION_DIR="$HOME/.fonts/"

if [[ $(uname) == "Darwin" ]]
then
  DESTINATION_DIR="$HOME/Library/Fonts/"

fi;

FONTS=$(ls $DIR/*.{ttf,otf})
for FONT in $FONTS
do
  if [[ -f $FONT ]]
  then
    echo "Copying $FONT in $DESTINATION_DIR
    cp $FONT "$HOME/Library/Fonts/"
  fi
done
