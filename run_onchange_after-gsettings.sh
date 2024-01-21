#!/bin/bash
set -euo pipefail

if ! command -v gsettings >/dev/null 2>&1; then
    echo "No gsettings found"
    exit 1
fi
fc-cache -f

# Gnome desktop interface
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrains Mono NL 12'

# Gnome shell
gsettings set org.gnome.shell enabled-extensions "['background-logo@fedorahosted.org', 'Vitals@CoreCoding.com', 'clipboard-history@alexsaveau.dev']"
gsettings set org.gnome.shell favorite-apps "['com.github.Eloston.UngoogledChromium.desktop', 'code.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.Nautilus.desktop']"

# Shortcuts
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "'Terminal'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "'/usr/bin/gnome-terminal'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "'<Super>t'"
