#!/bin/bash
set -euo pipefail

if grep -qF microsoft /proc/sys/kernel/osrelease; then
    exit 0
fi

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

# Terminal
profile=$(gsettings get org.gnome.Terminal.ProfilesList default | awk -F \' '{print $2}')
gsettings_list=(
    'audible-bell false'
    'bold-color-same-as-fg true'
    'bold-is-bright true'
    'cursor-shape '"'block'"''
    'default-size-columns 150'
    'default-size-rows 50'
    'scrollback-lines 10000'
    'use-system-font true'
    'use-theme-colors true'
    'background-transparency-percent 5'
    'use-transparent-background true'
    'visible-name '"'brk'"''
)
for setting in "${gsettings_list[@]}"; do
    # shellcheck disable=SC2086
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:"${profile}"/ ${setting}
done

# Shortcuts
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "'Terminal'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "'/usr/bin/gnome-terminal'"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "'<Super>t'"