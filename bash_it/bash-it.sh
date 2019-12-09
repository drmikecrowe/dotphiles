
if [[ -t 1 && ! -p /dev/stdout && "$(id -u)" == "1000" ]]; then
    # Load Bash It
    export BASH_IT="$HOME/.bash_it"
    export BASH_IT_THEME='doubletime_multiline'
    export BASH_IT_CUSTOM="$HOME/.dotfiles/bash_it/custom"
    unset MAILCHECK
    export SCM_CHECK=true
    #export SHORT_HOSTNAME=$(hostname -s)
    #export SHORT_USER=${USER:0:8}
    export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1
    source "$BASH_IT"/bash_it.sh

    if [ -f ~/.private/.bash_private ]; then 
        source ~/.private/.bash_private
    fi  
fi
