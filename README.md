For Debian 12 (bookworm), WSL2 or standard install.
Support for Fedora has been temporarily deprecated.

Run as root:
```bash
apt update -y && apt install -y curl
curl bootstrap.kirici.io | bash
```

To only get the config files:
```bash
yadm clone https://gitlab.com/kirici/dotfiles.git
```
Beware of approving to execute the bootstrap script or using the `--bootstrap` flag.
