# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

# Turn off bell
xset -b

# Environment Variables
export EDITOR=/usr/bin/nvim
export VISUAL=/usr/bin/nvim
export PATH=$PATH:/home/matti/tools/flutter/bin

# Aliases
alias vim="nvim"
alias ll="eza --long --header --inode --git"
alias cp="cp -i"
alias mv="mv -i"
alias rm="trash -v"
alias c="clear"

# Tmux Aliases
alias tmux="TERM=tmux-256color tmux"
alias ta="tmux a"
alias tas="tmux a -t"
alias tls="tmux list-sessions"
alias tks="tmux kill-session -t"
alias tns="tmux new -s"

# Fix Postman
alias postman="postman --disable-gpu"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
