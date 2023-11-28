[[ $- != *i* ]] && return
bindkey -v
export KEYTIMEOUT=1
alias wget='wget --no-hsts'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='%F{cyan}%~%f $ '
