# Super powerline ohmyzsh theme

# https://github.com/agnoster zsh theme

ZSH_THEME_PROMPT_DIRTY='±'

BG_COLOR=black

function in_hg(){
  if [[ -d .hg ]] || $(hg summary > /dev/null 2>&1); then
    echo 1
  else
    echo 0
  fi
}

function in_git(){
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo 1
  else
    echo 0
  fi
}

function _git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || ref="➦ $(git show-ref --head -s --abbrev |head -n1 2> /dev/null)"
  echo "${ref/refs\/heads\//⭠ }$(parse_git_dirty)"
}

function _git_prompt(){
  local OLD_BG_COLOR="$BG_COLOR"

  BG_COLOR="green"
  if [[ -n $(parse_git_dirty) ]]; then
    BG_COLOR="yellow"
  fi

  echo "%{%F{$OLD_BG_COLOR}%K{$BG_COLOR}%}⮀%{%F{black}%} $(_git_prompt_info)"
}

function _hg_prompt(){
  echo -n "$(_hg_info)"
}

function _vc_prompt(){
  if [ $(in_hg) -ne 0 ]; then
    echo -n "$(_hg_prompt)"
  fi

  if [ $(in_git) -ne 0 ]; then
    echo -n "$(_git_prompt)"
  fi
}

function _hg_info() {
  local OLD_BG_COLOR= $(eval "echo '$BG_COLOR'")

  if [ $(in_hg) ]; then
    BG_COLOR=green
    hg status 2> /dev/null | command grep -Eq '^\s*[ACDIM!?L]'
    if [ $pipestatus[-1] -eq 0 ]; then
      BG_COLOR=yellow
    fi

    echo -n "%{%F{$OLD_BG_COLOR}%K{$BG_COLOR}%}⮀%{%F{black}%} hg:⭠ $(hg branch)"
  fi
}

function _dir_prompt(){
  echo -n '%{%F{$BG_COLOR}%K{cyan}%}⮀%{%k%F{black}%K{cyan}%} %1~'
}

function _su_prompt(){
  echo -n '%(!.%{%k%F{cyan}%K{black}%}⮀%{%F{yellow}%} ⚡ %{%k%F{black}%}.%{%k%F{cyan}%})⮀%{%f%k%b%}'
}

function _user_prompt(){
  echo -n '%{%F{magenta}%} %n %{%F{black}%}'
}

function _last_status_prompt(){
  echo -n '%{%b%F{gray}%K{black}%} %(?.%{%F{green}%}✔.%{%F{red}%}x)'
}

PROMPT='%{%f%b%k%}
$(_last_status_prompt) $(_vc_prompt) $(_dir_prompt) $(_su_prompt) '
