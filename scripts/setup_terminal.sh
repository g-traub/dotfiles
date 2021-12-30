#!/bin/sh
# set terminator as default terminal
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"

# @TODO: check that zsh is installed

# install oh-my-zsh
# @TODO: check it's not already installed
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# install spaceship-prompt
# @TODO: check it's not already installed
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH/custom/themes/spaceship-prompt" --depth=1
ln -s "$ZSH/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH/custom/themes/spaceship.zsh-theme"
# NB: theme is already selected in .zshrc

# set zsh as default shell
chsh -s $(which zsh)

# reload terminal
exec zsh
