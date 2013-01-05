# pastjean in ~/... on brenchsign branch

PROMPT='%{$fg[magenta]%}%n%{$reset_color%} in %{$fg[green]%}${PWD/#$HOME/~}%{$reset_color%} $(git_prompt_info) '

# RPROMPT='${return_status}$(git_prompt_status)'
# RPROMPT=""


ZSH_THEME_GIT_PROMPT_PREFIX="on \u2b60 %{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""


# ZSH_THEME_GIT_PROMPT_ADDED=" ✚"
# ZSH_THEME_GIT_PROMPT_MODIFIED=" ✹"
# ZSH_THEME_GIT_PROMPT_DELETED=" ✖"
# ZSH_THEME_GIT_PROMPT_RENAMED=" ➜"
# ZSH_THEME_GIT_PROMPT_UNMERGED=" ═"
# ZSH_THEME_GIT_PROMPT_UNTRACKED=" ✭"
