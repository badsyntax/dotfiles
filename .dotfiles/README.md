# dotfiles

My dotfiles for macOS.

## Setup

- [Install homebrew](https://brew.sh/)
- [Install nvm](https://github.com/nvm-sh/nvm)
- Install direnv: `brew install direnv`
- Install git-open: `brew install git-open`
- Upgrade bash: `brew install bash bash-completion`

Clone the repo to add the dotfiles:

```bash
git clone --bare https://github.com/badsyntax/dotfiles.git $HOME/badsyntax/dotfiles
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

## Bash prompt

Basic, pretty, fast.

![screenshot](./screenshots/prompt.png)

## vscode settings

See https://github.com/badsyntax/richard-willis-vscode-extension-pack
