# kirici's .files

# Usage

### Prep

Create a config file at e.g. `$HOME/.config/chezmoi/chezmoi.toml`

```toml
[data]
  profile = "work"
  email_work = "kirici@acme.org"
  email_private = "kirici@example.com"
  name_work = "Wile E. Coyote"
  name_private = "kirici"
  sshkey_work = "id_rsa"
  sshkey_private = "id_ed25519"
```

### Apply

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply kirici`
```

# Assumed setup

Fedora 39+

```bash
curl -sL bootstrap.kirici.io | bash
```

This will run system and user setups, including syncing dotfiles via chezmoi as above.

To run the same setups with a different dotfiles repo:

```bash
curl -sL bootstrap.kirici.io | GITHUB_USER=$USERNAME bash
```
