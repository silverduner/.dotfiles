# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

alias e='emacs -nw'
alias ls='ls --color=auto'
alias ll='ls -altr'
alias grep='grep --color=auto'
alias find='find $* 2> /dev/null'
alias pid='ps -ef|grep -v grep|grep $1'
alias .s='source ~/.bashrc'

#get into tmux
#http://bionicraptor.ca/2011/07/24/automatically-start-tmux/

if [ `which tmux 2> /dev/null` -a -z "$TMUX" ]; then
    tmux -2 attach || tmux -2 new; exit
fi
