function c {
  cd ~/Documents/projets/$1;  
}
function _c {
  _files -W ~/Documents/projets -/
}

function h {
  cd ~/$1
}

function _h {
  _files -W ~/ -/
}

compdef _c c
compdef _h h
