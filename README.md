# kirici's .files

### Prerequisites
Fedora 39

`curl -sL bootstrap.kirici.io | sudo bash`

### Preferred method

`curl -sL bootstrap.kirici.io | bash`

This will run user-wide setups, including the chezmoi command below. If you'd like to run the same setups with a different chezmoi-dotfiles repo, you can use `curl -sL bootstrap.kirici.io | GITHUB_USER=$USERNAME bash`

### Dotfiles only

`sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply kirici`
