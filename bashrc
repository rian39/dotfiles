#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:/home/tpoisot/.gem/ruby/2.0.0/bin

alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias edit='vim'

unset SSH_ASKPASS

# Base 16 scheme
/home/tpoisot/.schemes/shell/base16-mocha.dark.sh
# Solarized dir colors
eval `dircolors /home/tpoisot/.schemes/dir/solarized-light`

# Needed for git status in the prompt
source /usr/share/git/git-prompt.sh 

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

export PS1='\[\e]0;\w\a\]\[\033[00;32m\]\W\[\033[0;31m\]$(__git_ps1) \[\033[00;33m\]\$\[\033[00m\] '
