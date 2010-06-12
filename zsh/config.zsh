export EDITOR='vim'

autoload -U colors
colors

# Autoload functions
fpath=(~/.zsh/functions $fpath)
autoload -U ~/.zsh/functions/*(:t)

# Load libraries (which are group of functions)
for config_file (~/.zsh/lib/*.zsh) source $config_file  

# this permits prompt to be reevaluated each time it is displayed
function precmd {
#	RPROMPT=$'%{\e[1;33m%}$(git_info_for_prompt)%{\e[0m%}'
  RPROMPT=$'%{\e[38;5;208m%}$(scm_prompt_info)%{$reset_color%}'
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

HISTFILE=~/.zsh_history
HISTSIZE=500
SAVEHIST=500

setopt autocd
setopt auto_menu
setopt PROMPT_SUBST
setopt NO_LIST_BEEP

setopt HIST_VERIFY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS


bindkey ';3D' backward-word
bindkey ';3C' forward-word
bindkey ';5D' beginning-of-line
bindkey ';5C' end-of-line

