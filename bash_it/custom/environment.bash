#!/usr/bin/env bash

if grep -qE "(Microsoft|WSL)" /proc/version &> /dev/null ; then
    export DISPLAY=:0
fi

export ZOPTS="-I"

[[ ":$PATH:" != *":/$HOME/bin:"* ]] && export PATH="$PATH:/$HOME/bin"
[[ ":$PATH:" != *":/$HOME/.local/bin:"* ]] && export PATH="$PATH:/$HOME/.local/bin"
[[ ":$PATH:" != *":/snap/bin:"* ]] && export PATH="$PATH:/snap/bin"
