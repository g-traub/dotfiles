#!/bin/sh
PACKAGES="code terminator vim yarn htop firefox chromium-browser curl zsh spotify-client fonts-powerline"

apt-get update
apt-get install $PACKAGES -y
