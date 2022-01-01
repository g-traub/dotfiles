MEDIA_DIR=$(realpath $(dirname $0)/../media)

# Accessibility
gsettings set org.gnome.desktop.a11y always-show-universal-access-status true

# Background
gsettings set org.gnome.desktop.background color-shading-type "solid"
gsettings set org.gnome.desktop.background picture-options "zoom"
gsettings set org.gnome.desktop.background picture-uri "file://$MEDIA_DIR/background.jpg"
gsettings set org.gnome.desktop.background primary-color "#000000"
gsettings set org.gnome.desktop.background secondary-color "#000000"

# Screensaver
gsettings set org.gnome.desktop.screensaver color-shading-type "solid"
gsettings set org.gnome.desktop.screensaver picture-options "zoom"
gsettings set org.gnome.desktop.screensaver picture-uri "file://$MEDIA_DIR/background.jpg"
gsettings set org.gnome.desktop.screensaver primary-color "#000000"
gsettings set org.gnome.desktop.screensaver secondary-color "#000000"

# Interface
gsettings set org.gnome.desktop.interface gtk-im-module "gtk-im-context-simple"
gsettings set org.gnome.desktop.interface gtk-theme "Yaru-dark"
gsettings set org.gnome.desktop.interface toolkit-accessibility false

# Notifications
gsettings set org.gnome.desktop.notifications show-banners false

# Files manager
gsettings set org.gnome.nautilus.compression default-compression-format "zip"

gsettings set org.gnome.nautilus.preferences default-folder-viewer "list-view"
gsettings set org.gnome.nautilus.preferences search-filter-time-type "last_modified"
gsettings set org.gnome.nautilus.preferences search-view "list-view"

# Apps dock
gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'firefox.desktop', 'terminator.desktop', 'code.desktop', 'postman_postman.desktop', 'datagrip_datagrip.desktop', 'discord_discord.desktop', 'spotify_spotify.desktop', 'todoist_todoist.desktop']"

gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 44
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock multi-monitor false
gsettings set org.gnome.shell.extensions.dash-to-dock preferred-monitor 0

gsettings set org.gnome.shell.extensions.desktop-icons show-home false
