set -Ux EDITOR "nvim"
set -Ux PAGER "less -FRX"
set -Ux GIT_CONFIG_GLOBAL $XDG_CONFIG_HOME/git/.gitconfig

set -Ux XDG_CONFIG_HOME $HOME/.config
set -Ux XDG_CACHE_HOME $HOME/.cache
set -Ux XDG_DATA_HOME $HOME/.local/share
set -Ux XDG_STATE_HOME $HOME/.local/state

set -Ux GOPATH $XDG_DATA_HOME/go
set -Ux GOMODCACHE $XDG_CACHE_HOME/go/pkg/mod

# See https://github.com/eza-community/eza/blob/main/man/eza_colors.5.md
set -Ux EZA_COLORS "uu=0:gu=0:uR=31:gR=31:da=38;5;248:oc=0"

set -Ux KUBECOLOR_OBJ_FRESH "8h"
