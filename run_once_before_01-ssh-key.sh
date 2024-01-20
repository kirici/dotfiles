#!/bin/bash

if [ ! -f "$HOME"/.ssh/id_ed25519 ]; then
    ssh-keygen -t ed25519 -f "$HOME"/.ssh/id_ed25519 -q -N "" -C "$(whoami)@$(uname -n)"
fi

eval "$(ssh-agent -s)"
ssh-add "$HOME"/.ssh/id_ed25519