#!/bin/sh

NPM_PACKAGES="corepack serve"

# get nvm script and execute it
curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# install and use node lts
nvm install --lts

# install global npm packages
npm i -g $NPM_PACKAGES
