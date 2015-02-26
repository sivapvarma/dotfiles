#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
#PS1="\[\e[01;33m\]\]\w>\[\e[0m\]\]\[\e[00;37m\]\] \[\e[0m\]"
source .bash_prompt

# added by Anaconda 2.1.0 installer
export PATH="/home/spv/anaconda/bin:$PATH"
