set -gx EDITOR "nvim"
set -gx PAGER "less -FRX"
set -gx LESSHISTFILE "/dev/null"
set -gx GIT_CONFIG_GLOBAL $XDG_CONFIG_HOME/git/.gitconfig

set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state

set -gx GOPATH $XDG_DATA_HOME/go
set -gx GOMODCACHE $XDG_CACHE_HOME/go/pkg/mod

set -gx DESKTOP $HOME/Desktop
set -gx DOWNLOADS $HOME/Downloads/

# See https://github.com/eza-community/eza/blob/main/man/eza_colors.5.md
set -gx EZA_COLORS "uu=0:gu=0:uR=31:gR=31:da=38;5;248:oc=0"

set -gx KUBECOLOR_OBJ_FRESH "8h"
