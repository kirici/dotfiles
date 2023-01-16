# dotfiles
Configuration files for shells, editors etc.  

## Installation
### bash
`.bashrc` and `oh-my-bash.sh` work in tandem with each other and the [oh-my-bash](https://github.com/ohmybash/oh-my-bash/) framework.

### vim
Install [Vundle](https://github.com/VundleVim/Vundle.vim#quick-start)  
Save `.vimrc` to $HOME

### nano
Save files to `$HOME`  

`nano` does not require any reloading.  

### tmux

Install TPM
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Reload your tmux environment
```
tmux source ~/.tmux.conf
```
To install new plugins (once added to .tmux.conf), start a tmux session and press `prefix` + `I` (capital i).
Standard prefix is `Ctrl` + `B`

### kubectl aliases

`kubectl_aliases` can be enabled either by either extending one's `.bashrc` with
```
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases
```
or by using it to replace the contents of `~/.oh-my-bash/plugins/kubectl/kubectl.plugin.sh` if oh-my-bash is used.

Autocompletion can be enabled for these aliases as well by extending your .bashrc (already done for the one supplied in this repo):
```
cho 'source <(kubectl completion bash)' >>~/.bashrc \\
echo 'alias k=kubectl' >>~/.bashrc \\
echo 'complete -o default -F __start_kubectl k' >>~/.bashrc 
```
