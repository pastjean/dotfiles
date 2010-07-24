#cd
alias ..='cd ..'

#ls
alias ls='ls -FGh --color=always'
alias la='ls -Ah --color=always'
alias ll='ls -lAh --color=always'

#color-output
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
