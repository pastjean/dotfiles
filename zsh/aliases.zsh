#cd
alias ..='cd ..'
alias cd..='cd ..'

#ls
alias ls='ls -FGh'
alias la='ls -Ah'
alias ll='ls -lAh'

if [ "$(uname)" = 'Linux' ]; then
  alias ls='ls -FGh --color=auto'
  alias la='ls -Ah --color=auto'
  alias ll='ls -lAh --color=auto'
fi

#color-output
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
