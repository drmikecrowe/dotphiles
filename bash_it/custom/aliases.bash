#!/usr/bin/env bash

alias .....='cd ../../../..'
alias ....='cd ../../..'
alias ...='cd ../..'
alias ..='cd ..'
alias acs='apt-cache search'
alias acs='aptitude search'
alias agg='sudo aptitude upgrade'
alias agi='aptitude install'
alias agi='sudo aptitude install'
alias agr='sudo aptitude remove'
alias agu='sudo aptitude update'
alias cnc='grep "^[^#;]"'
alias copy='cp'
alias cpuu="ps -e -o pcpu,cpu,nice,state,cputime,args --sort pcpu | sed '/^ 0.0 /d'"
alias dir='ls'
alias dud='du -h --max-depth=1 --one-file-system'
alias dudg='du -h --max-depth=1 --one-file-system 2>&1 | egrep "^[0-9.]*G"'
alias gh='history | grep --colour=auto'
alias grep="grep --color --exclude-dir='.svn' --exclude-dir='.git'"
alias hc="history | cut -b 8-"
alias l.='ls -d .[a-zA-Z]* --color=tty'
alias l='ls -l --color=tty'
alias ll='ls -la --color=tty'
alias ls='ls --color=tty'
alias lsd='ls -l | grep ^d'
alias md='mkdir'
alias memu='ps -e -o rss=,args= | sort -b -k1,1n | pr -TW$COLUMNS'
alias psa='ps faux'
alias psag='ps faux | grep'
alias psg='ps -A | grep'
alias psi='ps h -eo pmem,comm | sort -nr | head'
alias tail='tail -n 30'

# Docker Shortcuts
alias dc="docker-compose"
alias dcu="docker-compose up"
alias dcs="docker-compose stop"
alias dck="docker-compose kill"
# Kill all running containers.
alias dockerkillall='docker kill $(docker ps -q)'

# Delete all stopped containers.
alias dockercleanc='printf "\n>>> Deleting stopped containers\n\n" && docker rm \$(docker ps -a -q)'

# Delete all untagged images.
alias dockercleani='printf "\n>>> Deleting untagged images\n\n" && docker rmi \$(docker images -q -f dangling=true)'

# Delete all stopped containers and untagged images.
alias dockerclean='dockercleanc || true && dockercleani'

alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

mcd() { [ -n "$1" ] && mkdir -p "$@" && cd "$1"; }