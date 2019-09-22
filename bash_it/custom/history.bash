#!/usr/bin/env bash

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

# rag: expand history but do not execute
shopt -s histverify
shopt -s cdspell
shopt -s nocaseglob
shopt -s histappend
shopt -s cmdhist

function detailed_hist() {
    if [ "$(id -u)" -ne 0 ]; then 
        NOW=$(date "+%Y-%m-%d")
        DEST="${HOME}/.logs$(pwd)"
        if [ ! -d "$DEST" ]; then 
            mkdir -p "$DEST"
        fi
        echo "$(date "+%Y-%m-%d.%H:%M:%S") $(history 1 | cut -b 8-)" >> "$DEST/bash-history-$NOW.log"
    fi
}

export PROMPT_COMMAND="$PROMPT_COMMAND;detailed_hist"
