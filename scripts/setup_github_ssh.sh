#!/bin/sh
echo "setup github ssh"

# create ssh key (keep the default)
if ! [ -e ~/.ssh/id_ed25519 ]; then
  ssh-keygen -t ed25519 -C "g-traub"
fi

# add it to ssh-agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# login to gh CLI (login with newly created SSH key)
gh auth login
