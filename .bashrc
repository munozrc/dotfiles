# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
alias merge="xrdb -merge ~/.Xresources"
alias ls="ls --color=auto"
alias ll="ls -lah"
alias sp="sudo pacman"
alias cdd="cd ~/Repos/dotfiles/"
alias cdr="cd ~/Repos/"

# Aliases Git
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gd="git diff"
alias gr="git restore"
alias gl="git log --graph --oneline --decorate=short"

# NVM config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set custom prompt
PS1="\[\033[01;37m\][\[\033[01;31m\]\w\[\033[01;37m\]]\[\033[0m\] "
