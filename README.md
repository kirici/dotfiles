# kirici's .files

### Prerequisites

Fedora 39+

### Usage

```bash
curl -sL bootstrap.kirici.io | bash
```

This will run system and user setups, including syncing dotfiles via chezmoi.

If you'd like to run the same setups with a different dotfiles repo, you can use 

```bash
curl -sL bootstrap.kirici.io | GITHUB_USER=$USERNAME bash
```

### Dotfiles only

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply kirici`
```
