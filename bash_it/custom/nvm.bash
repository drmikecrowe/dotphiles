#!/usr/bin/env bash

if [[ -t 1 && ! -p /dev/stdout ]]; then
	NVM_VERSION=8.11.4
	export NVM_DIR="$HOME/.nvm"
	source "$NVM_DIR/nvm.sh" --no-use  # This loads nvm
	source "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
	nvm use $NVM_VERSION
fi
