#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias vim="nvim"
alias merge="xrdb -merge ~/.Xresources"
alias ls="ls --color=auto"
alias ll="ls -la"

# NVM config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\]\w\$\[\033[00m\] "
