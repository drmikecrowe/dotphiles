#!/usr/bin/env bash

if grep -qE "(Microsoft|WSL)" /proc/version &> /dev/null ; then
    export DISPLAY=:0
fi

export ZOPTS="-I"

if [ "$(which ksshaskpass)" != "" ]; then
  export SSH_ASKPASS="$(which ksshaskpath)"
fi

[[ ":$PATH:" != *":$HOME/bin:"* ]] && export PATH="$PATH:$HOME/bin"
[[ ":$PATH:" != *":$HOME/.local/bin:"* ]] && export PATH="$PATH:$HOME/.local/bin"
[[ ":$PATH:" != *":$HOME/.pyenv/bin:"* ]] && export PATH="$PATH:$HOME/.pyenv/bin"
[[ ":$PATH:" != *":$HOME/.nodenv/bin:"* ]] && export PATH="$PATH:$HOME/.nodenv/bin"
[[ ":$PATH:" != *":/snap/bin:"* ]] && export PATH="$PATH:/snap/bin"
