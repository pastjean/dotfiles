# this permits prompt to be reevaluated each time it is displayed
  function precmd {
  RPROMPT=$'%{\e[33m%}$(scm_prompt_info)%{$reset_color%}'
}
PROMPT=$'%{\e[38;5;199m%}$USERNAME:%{\e[1;32m%}${PWD/#$HOME/~}%{\e[0;31m%}$%{\e[0m%}'

# Enable auto-execution of functions.
typeset -ga preexec_functions
typeset -ga precmd_functions
typeset -ga chpwd_functions

# Append git functions needed for prompt.
preexec_functions+='preexec_git_update_vars'
precmd_functions+='precmd_git_update_vars'
chpwd_functions+='chpwd_git_update_vars'

# Clear screen on console exit
trap clear 0


setopt autocd
setopt auto_menu
setopt PROMPT_SUBST
setopt NO_LIST_BEEP

