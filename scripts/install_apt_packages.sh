#!/bin/sh
PACKAGES="code terminator vim yarn htop firefox chromium-browser"

apt-get update
apt-get install $PACKAGES -y
