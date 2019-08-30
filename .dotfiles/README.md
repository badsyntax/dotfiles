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
  bash-completion \
  watchman
```

Clone the repo to add the dotfiles to your home directory:

```bash
git clone --bare https://github.com/badsyntax/dotfiles.git $HOME/Projects/badsyntax/dotfiles
alias dotfiles="/usr/bin/git --git-dir=$HOME/Projects/badsyntax/dotfiles/ --work-tree=$HOME"
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no # don't show untracked files when doing `git status`
source $HOME/.bashrc
```

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

## Credits

* https://harfangk.github.io/2016/09/18/manage-dotfiles-with-a-git-bare-repository.html
