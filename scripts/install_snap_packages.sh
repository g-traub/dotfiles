#!/bin/sh
PACKAGES="postman vlc todoist discord"
CLASSIC_PACKAGES="datagrip"

snap install $PACKAGES
snap install $CLASSIC_PACKAGES --classic
