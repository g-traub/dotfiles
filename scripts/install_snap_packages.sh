#!/bin/sh
PACKAGES="postman vlc todoist"
CLASSIC_PACKAGES="datagrip"

snap install $PACKAGES
snap install $CLASSIC_PACKAGES --classic
