#!/bin/bash
set -euo pipefail

if ! echo "${XDG_CURRENT_DESKTOP}" | grep -Eiqo 'gnome' ; then
    exit 0
fi

if ! command -v gsettings >/dev/null 2>&1; then
    echo "No gsettings found"
    exit 1
fi
fc-cache -f

# Gnome desktop interface
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrainsMonoNL Nerd Font 13'
gsettings set org.gnome.shell favorite-apps "['org.gnome.Ptyxis.desktop', 'org.gnome.Nautilus.desktop']"

# Shortcuts
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "'Terminal'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "'/usr/bin/ptyxis --new-window'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "'<Super>t'"

# Settings
gsettings set org.gnome.Ptyxis visual-bell false
gsettings set org.gnome.Ptyxis restore-session false
gsettings set org.gnome.Ptyxis restore-window-size false
gsettings set org.gnome.Ptyxis default-columns "uint32 120"
gsettings set org.gnome.Ptyxis default-rows "uint32 24"
gsettings set org.gnome.Ptyxis use-system-font true
dconf write /org/gnome/Ptyxis/Profiles/"$(gsettings get org.gnome.Ptyxis profile-uuids | grep -oE '\w+')"/palette "'Darkside'"
