#cd
alias ..='cd ..'

#ls
alias ls='ls -Fh --color=auto'
alias la='ls -Ah'
alias ll='ls -lAh'

#color-output
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
