#!/usr/bin/env bash

if [ -d $HOME/bin ]; then
    export PATH=$PATH:$HOME/bin
fi

if grep -qE "(Microsoft|WSL)" /proc/version &> /dev/null ; then
    export DISPLAY=:0
fi

export SCM_CHECK=false

# if xhost >& /dev/null ; then 
# 	xhost +
# fi

if [ -f ~/.private/.bash_private ]; then 
    source ~/.private/.bash_private
fi 
