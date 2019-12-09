#!/usr/bin/env bash

if grep -qE "(Microsoft|WSL)" /proc/version &> /dev/null ; then
    export DISPLAY=:0
fi

export ZOPTS="-I"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" nouse  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /home/mcrowe/.nvm/versions/node/v10.16.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /home/mcrowe/.nvm/versions/node/v10.16.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /home/mcrowe/.nvm/versions/node/v10.16.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /home/mcrowe/.nvm/versions/node/v10.16.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /home/mcrowe/.nvm/versions/node/v10.16.3/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash ] && . /home/mcrowe/.nvm/versions/node/v10.16.3/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.bash
# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /home/mcrowe/.nvm/versions/node/v10.16.3/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash ] && . /home/mcrowe/.nvm/versions/node/v10.16.3/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.bash
