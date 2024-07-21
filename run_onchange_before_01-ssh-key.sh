#!/bin/bash

if [ ! -f "$HOME"/.ssh/id_ed25519 ]; then
    ssh-keygen -t ed25519 -f "$HOME"/.ssh/id_ed25519 -q -N "" -C "$(whoami)@$(uname -n)"
fi

eval "$(ssh-agent -s)"
ssh-add "$HOME"/.ssh/id_ed25519

ssh_add_list="$(ssh-add -L)"
mkdir -p "$HOME"/.config/git
echo "74684021+kirici@users.noreply.github.com $ssh_add_list" > "$HOME"/.config/git/allowed_signers
