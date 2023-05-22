#!/usr/bin/env bash

# logging functions
INFO() {
	/bin/echo -e "\e[104m\e[97m[INFO]\e[49m\e[39m ${*}"
}

WARNING() {
	/bin/echo >&2 -e "\e[101m\e[97m[WARNING]\e[49m\e[39m ${*}"
}

ERROR() {
	/bin/echo >&2 -e "\e[101m\e[97m[ERROR]\e[49m\e[39m ${*}"
}

main() {
    id="$(id -u)"
    # verify root status
	if [ ! "$id" = "0" ]; then
		ERROR "This bootstrap script needs to be run as root."
		exit 1
	fi
    # dnf config
    echo -e "max_parallel_downloads=16\nassumeyes=True\nfastestmirror=True" | tee -a /etc/dnf/dnf.conf
    # rpmfusion repos
    dnf config-manager --set-enabled crb
    dnf install -y epel-release
    dnf install -y https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-"$(rpm -E %rhel)".noarch.rpm https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-"$(rpm -E %rhel)".noarch.rpm
    dnf groupupdate core -y
    # flathub, gnome extensions
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo -y
    flatpak install org.gnome.Extensions -y
    # oh-my-bash
    curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh | bash
    # micro editor
    curl https://getmic.ro | bash && sudo mv ./micro /usr/bin
    # various
    dnf install -y gnome-tweaks gnome-shell-extension-workspace-indicator \
        bat \
        ncdu \
        golang \
        python3-pip \
        google-chrome-stable
    # go packages
    go install github.com/cheat/cheat/cmd/cheat@latest
    # tmux plugins
    mkdir -p ~/.tmux/plugins
    if [ ! -d ~/.tmux/plugins/tpm ]; then
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    fi

    if [ -x ~/.tmux/plugins/tpm/bin/install_plugins ]; then
        ~/.tmux/plugins/tpm/bin/install_plugins
    fi

    if [ -x ~/.tmux/plugins/tpm/bin/update_plugins ]; then
        ~/.tmux/plugins/tpm/bin/update_plugins all
    fi
    # nerd font
    mkdir ~/.local/share/fonts
    (cd ~/.local/share/fonts && curl -fsSLo JetBrainsMonoNerdFontMono-Regular.ttf https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Ligatures/Regular/JetBrainsMonoNerdFontMono-Regular.ttf)
    fc-cache ~/.local/share/fonts
    # yadm init
    yadm checkout master
    src
    clear
}