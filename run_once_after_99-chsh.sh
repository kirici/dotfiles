#!/bin/bash

log_info() {
    /bin/echo -e "\e[104m\e[97m[INFO]\e[49m\e[39m ${*}"
}

log_info "To change your default shell, run:"
# shellcheck disable=SC2016
log_info 'chsh -s "$(which zsh)"'
