#!/bin/sh
PACKAGES="code terminator vim htop firefox chromium-browser curl zsh spotify-client fonts-powerline expect gh"

apt-get update
apt-get install $PACKAGES -y
