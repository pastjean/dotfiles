function c {
  cd $PROJECTS/$1;  
}
function _c {
  _files -W  $PROJECTS -/
}

function h {
  cd ~/$1
}

function _h {
  _files -W ~/ -/
}

compdef _c c
compdef _h h
