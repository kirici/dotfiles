# .files

## Prep

```bash
sudo dnf install -y age awk bat difftastic fd-find fish gdu golang ncurses neovim ripgrep trash-cli yq
chsh -s /usr/bin/fish
sudo dnf copr enable -y jdxcode/mise
sudo dnf install -y mise
mise use -g chezmoi jj opentofu terragrunt
```

## Exec

```bash
mise exec -- chezmoi init --apply kirici
```
