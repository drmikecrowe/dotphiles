
if [[ -t 1 && ! -p /dev/stdout && "$(id -u)" == "1000" ]]; then
    # Load Bash It
    export BASH_IT="$HOME/.bash_it"
    export BASH_IT_THEME='doubletime_multiline'
    export BASH_IT_CUSTOM="$HOME/.dotfiles/bash_it/custom"
    unset MAILCHECK
    export SCM_CHECK=false
    #export SHORT_HOSTNAME=$(hostname -s)
    #export SHORT_USER=${USER:0:8}
    export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" nouse  # This loads nvm
    nvm use 8.11
    if [ -f /usr/share/virtualenvwrapper/virtualenvwrapper.sh ]; then
      source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
    fi
    if [ -d ~/.pyenv ]; then 
      export PATH="~/.pyenv/bin:$PATH"
      eval "$(pyenv init -)"
      eval "$(pyenv virtualenv-init -)"
    fi
    source "$BASH_IT"/bash_it.sh
fi