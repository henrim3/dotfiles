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
export PATH=$PATH:/home/matti/.local/bin:/usr/local/bin
export CHROME_EXECUTABLE=/usr/bin/google-chrome-stable
export IGNOREEOF=10

# shorten prompt
PROMPT_DIRTRIM=3

source /usr/local/bin/git-prompt.sh
# PS1='\u@\h \W$(__git_ps1 " (%s)") \$ '
export PS1='\[\e]133;k;start_kitty\a\]\[\e]133;A\a\]\[\e]133;k;end_kitty\a\]\[\033]0;\u@\h:\w\007\]\[\033[01;32m\]\u@\h\[\033[01;34m\] \w$(__git_ps1 " (%s)") \n\$\[\033[00m\] \[\e]133;k;start_suffix_kitty\a\]\[\e]2;\w\a\]\[\e]133;k;end_suffix_kitty\a\]'

# Aliases
alias vim="nvim"
alias ll="eza --long --header --inode --git"
alias lla="ll -a"
alias cp="cp -i"
alias mv="mv -i"
alias rm="trash -v"
alias c="clear"
function cl () {
    cd "$@" && ll
}
function cla () {
    cd "$@" && lla
}
alias p="pwd"
function mkcd () {
    mkdir "$@" && cd "$@"
}

# Tmux Aliases
alias tmux="TERM=tmux-256color tmux"
alias ta="tmux a"
alias tas="tmux a -t"
alias tls="tmux list-sessions"
alias tks="tmux kill-session -t"
alias tns="tmux new -s"

# lazygit
alias lg="lazygit"

alias yt-wav="yt-dlp --extract-audio --audio-format wav"
alias set-brightness="xrandr --output eDP-1 --brightness"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
