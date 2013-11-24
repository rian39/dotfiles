#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:/home/tpoisot/.gem/ruby/2.0.0/bin

alias ls='ls --color=auto'
alias grep='grep --color=always'
alias gpom='git push origin master'
alias gpull='git pull'
alias gstat='git status'
alias gdiff='git diff'

PS1="\[\033[31;1m\]>\[\033[m\] "

# Needed for git status in the prompt
source /usr/share/git/git-prompt.sh 

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1


# 
export PS1='\[\e]0;\w\a\]\[\033[1;$(echo `expr 33 + $?`)m\]@ \[\033[01;32m\]\W\[\033[31m\]$(__git_ps1) \[\033[35m\]\$\[\033[00m\] '