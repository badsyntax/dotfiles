# shellcheck shell=bash disable=SC1090
# .bashrc for macOS

function setup-nvm() {
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" --no-use
	[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
}

function setup-prompt() {
	[ -f "$(brew --prefix)/etc/bash_completion" ] &&
		. "$(brew --prefix)"/etc/bash_completion
	GIT_PS1_SHOWUNTRACKEDFILES=true
	GIT_PS1_SHOWDIRTYSTATE=true
	GIT_PS1_SHOWSTASHSTATE=true
	GIT_PS1_SHOWCOLORHINTS=true
	GIT_PS1_SHOWUPSTREAM="auto"
	GIT_PS1_DESCRIBE_STYLE="branch"
	PROMPT_DIRTRIM=4
	PROMPT_COMMAND='__git_ps1 "\[\033[32m\]\u\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]\[\033[00m\]" "\n\$ " " (%s)"'
}

function setup-aliases() {
	alias ls='ls -lGF'
	alias dotfiles="/usr/bin/git --git-dir=$HOME/Projects/badsyntax/dotfiles/ --work-tree=$HOME"
}

function setup-env() {
	export GREP_OPTIONS='--color=always'
	export EDITOR=vim
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

setup-nvm
setup-aliases
setup-prompt
setup-env
