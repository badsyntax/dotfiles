# shellcheck shell=bash disable=SC1090
# .bashrc for macOS

function nvm() {
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  nvm "$@"
}

function setup-prompt() {
  if [ -f "$(brew --prefix)/etc/bash_completion" ]; then
    . "$(brew --prefix)"/etc/bash_completion
  fi
  export GIT_PS1_SHOWUNTRACKEDFILES=true
  export GIT_PS1_SHOWDIRTYSTATE=true
  export GIT_PS1_SHOWSTASHSTATE=true
  export GIT_PS1_SHOWCOLORHINTS=true
  export GIT_PS1_SHOWUPSTREAM="auto"
  export GIT_PS1_DESCRIBE_STYLE="branch"
  export PROMPT_DIRTRIM=4
  export PS1='\[\033[32m\]\u\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n$ '
}

function setup-aliases() {
  alias ls='ls -lGF'
  alias dotfiles="/usr/bin/git --git-dir=$HOME/Projects/badsyntax/dotfiles/ --work-tree=$HOME"
}
:
function setup-env() {
  export GREP_OPTIONS='--color=always'
  export EDITOR=vim
  export NVM_DIR="$HOME/.nvm"
  eval "$(direnv hook bash)"
}

function check-port() {
  lsof -i :"$1"
}

function serve() {
  local PORT=$1
  if [ -z "$PORT" ]; then
    PORT=8888
  fi
  python -m SimpleHTTPServer "$PORT"
}

setup-env
setup-aliases
setup-prompt
