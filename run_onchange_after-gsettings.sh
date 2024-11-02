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

# Gnome shell
gsettings set org.gnome.shell enabled-extensions "['background-logo@fedorahosted.org', 'Vitals@CoreCoding.com', 'clipboard-history@alexsaveau.dev', 'pano@elhan.io', 'launch-new-instance@gnome-shell-extensions.gcampax.github.com', 'search-light@icedman.github.com', 'tactile@lundal.io']"
gsettings set org.gnome.shell favorite-apps "['io.github.ungoogled_software.ungoogled_chromium.desktop', 'code.desktop', 'kitty.desktop', 'org.gnome.Nautilus.desktop']"

# Shortcuts
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "'Terminal'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "'/usr/bin/kitty'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "'<Super>t'"
