#!/bin/zsh

set -e # exit on errors

ZSH_DIR="${ZSH:-"$HOME/.oh-my-zsh"}"
ZSH_PLUGINS_DIR="$ZSH_DIR/custom/plugins"
ZSH_THEMES_DIR="$ZSH_DIR/custom/themes"

# set terminator as default terminal
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/terminator
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"

# install oh-my-zsh
if ! [ -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# add autosuggestions plugin
if ! [ -d "$ZSH_PLUGINS_DIR/zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_PLUGINS_DIR/zsh-autosuggestions"
fi

# add highlighting plugin
if ! [ -d "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting"
fi

# install spaceship-prompt
if ! [ -d "$ZSH_THEMES_DIR/spaceship-prompt" ]; then
  git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_THEMES_DIR/spaceship-prompt" --depth=1
  ln -s "$ZSH_THEMES_DIR/spaceship-prompt/spaceship.zsh-theme" "$ZSH_THEMES_DIR/spaceship.zsh-theme"
fi
# NB: theme is already selected in .zshrc

# set zsh as default shell
chsh -s $(which zsh)

# reload config
source "$HOME/.zshrc"
