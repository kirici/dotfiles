if (( ! $+commands[podman] )); then
  return
fi

# If the completion file doesn't exist yet, we need to autoload it and
# bind it to `podman`. Otherwise, compinit will have already done that.
if [[ ! -f "$ZSH_CACHE_DIR/completions/_podman" ]]; then
  typeset -g -A _comps
  autoload -Uz _podman
  _comps[podman]=_podman
fi

podman completion zsh 2> /dev/null >| "$ZSH_CACHE_DIR/completions/_podman" &|

alias podalp='podman run -it --rm docker.io/library/alpine:3.19'
alias podis='podman images'
alias podisr='podman images --sort=repository'
alias podlo='podman container logs'
alias podps='podman ps'
alias podpsa='podman ps -a'
alias podpsaft='podman ps -a --format "table {{.ID}}\t{{.Names}}\t{{.Image}}\t{{.Status}}\t{{.Ports}}"'
alias podrm='podman container rm'
alias 'podrm!'='podman container rm --force'
alias podrs='podman container restart'
alias podrund='podman container run -it'
alias podruni='podman container run -it'
alias podst='podman container start'
alias podsta='podman stop $(podman ps --quiet)'
alias podstp='podman container stop'
alias podtop='podman top'
alias podvi='podman volume inspect'
alias podvls='podman volume ls'
alias podvprune='podman volume prune'
alias podxc='podman container exec'
alias podxcit='podman container exec -it'

# Functions
function podbuild {
  if [[ $# -eq 0 ]] ; then
    echo "Usage: $funcstack[1] <containerfile>"
    return
  fi
  if [[ ! $(git rev-parse --short HEAD) ]] ; then
    podman build --label autobuild -t "${1:r}":latest -f "${1}"
  fi
  podman build --label autobuild -t "${1:r}":"$(git rev-parse --short HEAD)" -t "${1:r}":latest -f "${1}"
}
