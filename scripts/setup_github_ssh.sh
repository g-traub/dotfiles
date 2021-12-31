#!/bin/bash
SSH_DIR="$HOME/.ssh"
key_name=$1
key_comment=$2
key_passphrase=$3

if [ -z $key_name ] || [ -z $key_comment ] || [ -z $key_passphrase ]; then
  echo "Missing argument(s). Provide key name, key comment and key passphrase"
  exit 1
fi

# create ssh key
if ! [ -e "$SSH_DIR/$key_name" ]; then
  ssh-keygen -q -t ed25519 -C $key_comment -f "$SSH_DIR/$key_name" -N $key_passphrase
fi

# add it to ssh-agent
eval "$(ssh-agent -s)"
expect <<EOF
  spawn ssh-add "$SSH_DIR/$key_name"
  expect "Enter passphrase for $SSH_DIR/$key_name:"
  send "$key_passphrase\r"
  expect eof
EOF

# login to gh CLI
gh auth login -s admin:public_key --web

# add ssh key
gh ssh-key add "$SSH_DIR/$key_name.pub"
