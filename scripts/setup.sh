#!/bin/bash
set -e # exit on errors

ssh_key_name=$1
ssh_key_comment=$2
ssh_key_passphrase=$3

SCRIPTS_DIR=$(realpath $(dirname $0))

$SCRIPTS_DIR/add_apt_repositories.sh
sudo $SCRIPTS_DIR/install_apt_packages.sh  # run as root
sudo $SCRIPTS_DIR/install_snap_packages.sh # run as root
$SCRIPTS_DIR/setup_terminal.sh
$SCRIPTS_DIR/install_nvm.sh
$SCRIPTS_DIR/install_global_npm_packages.sh
$SCRIPTS_DIR/setup_github_ssh.sh $ssh_key_name $ssh_key_comment $ssh_key_passphrase
$SCRIPTS_DIR/setup_settings.sh
$SCRIPTS_DIR/symlink_dotfiles.sh

# reload config
exec zsh
