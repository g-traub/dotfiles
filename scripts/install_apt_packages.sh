#!/bin/sh
PACKAGES="code terminator vim yarn htop firefox chromium-browser curl zsh"

apt-get update
apt-get install $PACKAGES -y
