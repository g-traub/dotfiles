#!/bin/sh
PACKAGES="corepack serve"

# Make sure nvm is loaded
if [ -z "$NVM_DIR" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
fi

npm i -g $PACKAGES
