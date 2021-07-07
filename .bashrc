# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias merge="xrdb -merge ~/.Xresources"
alias ls="ls --color=auto"
alias ll="ls -la"

# Aliases Git
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gd="git diff"
alias gr="git restore"

# NVM config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set custom prompt
PS1="\[\033[01;32m\][\[\033[01;34m\]\w\[\033[01;32m\]]\[\033[00m\] "
