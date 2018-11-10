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
