#!/bin/sh
DIR=`dirname $0`

for entry in `find ../$DIR -name ".[!.]*"` # List all hidden files in directory
do
  path=`realpath $entry`
  if ! [ -L $filepath] # if symlink does't exist create it
  then
    ln -s `realpath $entry`  ~/
  fi
done