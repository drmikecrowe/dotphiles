export AWS_VAULT_BACKEND="file"
awsvld() {  
    aws-vault --debug login $1 --mfa-token=$2 
}

awsvl() {  
    aws-vault --debug login $1 --mfa-token=$2 --stdout | xargs -t nohup $(which google-chrome-beta) %U --no-first-run --new-window --disk-cache-dir=$(mktemp -d /tmp/chrome.XXXXXX) --user-data-dir=$(mktemp -d /tmp/chrome.XXXXXX) >/dev/null 2>&1 &
}

awsve() {  
    aws-vault exec --assume-role-ttl=60m --session-ttl=12h $@
}

awsvhelp() {
    cat <<EOF
Commands:
    * awsvld    -- login to AWS console for a specific profile
EOF

}