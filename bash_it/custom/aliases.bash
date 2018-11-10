#!/usr/bin/env bash

alias tail='tail -n 30'
alias psg='ps -A | grep'
alias psa='ps faux'
alias psag='ps faux | grep'
alias psi='ps h -eo pmem,comm | sort -nr | head'
alias cpuu="ps -e -o pcpu,cpu,nice,state,cputime,args --sort pcpu | sed '/^ 0.0 /d'"
alias memu='ps -e -o rss=,args= | sort -b -k1,1n | pr -TW$COLUMNS'
alias md='mkdir'
alias lsd='ls -l | grep ^d'
alias ls='ls --color=tty'
alias l='ls -l --color=tty'
alias ll='ls -la --color=tty'
alias l.='ls -d .[a-zA-Z]* --color=tty'
alias grep="grep --color --exclude-dir='.svn' --exclude-dir='.git'"
alias gh='history | grep --colour=auto'
alias dud='du -h --max-depth=1 --one-file-system'
alias dudg='du -h --max-depth=1 --one-file-system 2>&1 | egrep "^[0-9.]*G"'
alias dir='ls'
alias copy='cp'
alias cnc='grep "^[^#;]"'
alias agi='aptitude install'
alias acs='apt-cache search'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias acs='aptitude search'
alias agi='sudo aptitude install'
alias agr='sudo aptitude remove'
alias agu='sudo aptitude update'
alias agg='sudo aptitude upgrade'

alias hc="history | cut -b 8-"

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
