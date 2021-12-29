#!/bin/sh
DIR=$(dirname $0)

dotfiles=$(find $DIR/../dotfiles -name ".[!.]*") # List all hidden files

for file in $dotfiles; do
  ln -sf $(realpath $file) ~/
done
