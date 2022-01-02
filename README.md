# Dotfiles / new machine setup

## What does it do ?

- install packages
- setup ubuntu settings
- setup terminal (oh-my-zsh, theme, plugins)
- setup github ssh
- symlinks dotfiles from this repo

## How to use this

### Requirements

Have `git` installed or install it :

```Shell
sudo apt update && sudo apt install git -y
```

### Usage

Get this repo on your machine :

```Shell
git clone https://github.com/g-traub/dotfiles.git
```

Run the setup script :

```Shell
./scripts/setup.sh github_ssh_key_name github_ssh_key_comment github_ssh_key_passphrase
```

### Additional manual config

#### VScode

- Log in with github
- Enable "settings sync"

#### Firefox

- Install Dashlane extension (https://www.dashlane.com/extension/standalone)
- Log into firefox account
