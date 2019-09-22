#!/usr/bin/env bash

if grep -qE "(Microsoft|WSL)" /proc/version &> /dev/null ; then
    export DISPLAY=:0
fi

export ZOPTS="-I"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" nouse  # This loads nvm
if [ -f /usr/share/virtualenvwrapper/virtualenvwrapper.sh ]; then
    source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
fi

if [ -d ~/.pyenv ]; then 
    export PATH="~/.pyenv/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

[[ ":$PATH:" != *":/$HOME/bin:"* ]] && export PATH="$PATH:/$HOME/bin"
[[ ":$PATH:" != *":/$HOME/go/bin:"* ]] && export PATH="$PATH:/$HOME/go/bin"
[[ ":$PATH:" != *":/$HOME/.local/bin:"* ]] && export PATH="$PATH:/$HOME/.local/bin"
[[ ":$PATH:" != *":/snap/bin:"* ]] && export PATH="$PATH:/snap/bin"
[[ ":$PATH:" != *":./node_modules/.bin:"* ]] && export PATH="$PATH:./node_modules/.bin"
