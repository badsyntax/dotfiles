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

Clone the repo to add the dotfiles to your home directory:

```bash
git clone --bare https://github.com/badsyntax/dotfiles.git $HOME/Projects/badsyntax/dotfiles
alias dotfiles="/usr/bin/git --git-dir=$HOME/Projects/badsyntax/dotfiles/ --work-tree=$HOME"
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
source $HOME/.bashrc
```

<details><summary>Explanation</summary>

- A bare git repo is cloned to the `~/Projects` dir
- The `dotfiles` alias is setup which uses links the bare repo to the home directory
- Files from the bare git repo are then checked out to the home directory
- `showUntrackedFiles` is disabled for the home directory, to hide files we are not explicitly tracking yet. This is so when you type `dotfiles status` and other commands, files you are not interested in tracking will not show up as untracked.
  </details>

Create your user specific `.gitconfig` for the purpose of setting your git user:

```bash
echo "[user]
  name = Richard Willis
  email = willis.rh@gmail.com
" > ~/.gituser
```

## Usage

Use the `dotfiles` alias to push or pull dotfile changes:

```bash
cd ~
dotfiles status
dotfiles add .bashrc
dotfiles commit -m "Update .bashrc"
dotfiles push
```

_As you can see, the `dotfiles` alias is just git._

## Bash prompt

Basic, pretty, fast.

![screenshot](/.dotfiles/screenshots/prompt.png)

## vscode settings

See https://github.com/badsyntax/richard-willis-vscode-extension-pack
