#!/usr/bin/env bash

if [ -d $HOME/bin ]; then
    export PATH=$PATH:$HOME/bin
fi

if grep -qE "(Microsoft|WSL)" /proc/version &> /dev/null ; then
    export DISPLAY=:0
fi

export ZOPTS="-I"
export AWS_VAULT_BACKEND="file"

# if xhost >& /dev/null ; then 
# 	xhost +
# fi

if [ -f ~/.private/.bash_private ]; then 
    source ~/.private/.bash_private
fi 
awsvld() {  
    aws-vault --debug login $1 --mfa-token=$2 
}

awsvl() {  
    aws-vault --debug login $1 --mfa-token=$2 --stdout | xargs -t nohup $(which google-chrome-beta) %U --no-first-run --new-window --disk-cache-dir=$(mktemp -d /tmp/chrome.XXXXXX) --user-data-dir=$(mktemp -d /tmp/chrome.XXXXXX) >/dev/null 2>&1 &
}

awsve() {  
    aws-vault exec --assume-role-ttl=60m --session-ttl=12h $@
}