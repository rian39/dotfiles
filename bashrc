#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:/home/tpoisot/.gem/ruby/2.0.0/bin

alias ls='ls --color=auto'
alias grep='grep --color=always'

PS1="\[\033[31;1m\]>\[\033[m\] "

# Needed for git status in the prompt
source /usr/share/git/git-prompt.sh 

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1


#return value visualisation
PS1="\[\e]0;\W\a\]\$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\][\342\234\223]\"; else echo \"\[\033[01;31m\][\342\234\227]\"; fi)\[\033[33;2m\] \$\[\033[00m\] "
