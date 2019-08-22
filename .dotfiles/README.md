# dotfiles

My dotfiles for macOS.

## Setup

- [Install homebrew](https://brew.sh/)
- [Install nvm](https://github.com/nvm-sh/nvm)

Install deps:

```bash
brew install \
  direnv \
  git-open \
  bash \
  bash-completion
```

Clone the repo to add the dotfiles:

```bash
git clone --bare https://github.com/badsyntax/dotfiles.git $HOME/Projects/badsyntax/dotfiles
alias dotfiles="/usr/bin/git --git-dir=$HOME/Projects/badsyntax/dotfiles/ --work-tree=$HOME"
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
source $HOME/.bashrc
```

## Bash prompt

Basic, pretty, fast.

![screenshot](/.dotfiles/screenshots/prompt.png)

## vscode settings

See https://github.com/badsyntax/richard-willis-vscode-extension-pack
