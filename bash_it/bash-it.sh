
if [[ -t 1 && ! -p /dev/stdout ]]; then
    # Load Bash It
    export BASH_IT="$HOME/.bash_it"
    export BASH_IT_THEME='doubletime_multiline_pyonly'
    unset MAILCHECK
    export SCM_CHECK=true
    #export SHORT_HOSTNAME=$(hostname -s)
    #export SHORT_USER=${USER:0:8}
    export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1
    source "$BASH_IT"/bash_it.sh
    for f in "$HOME/.dotfiles/bash_it/custom/*bash"; do 
        source $f
    done
fi