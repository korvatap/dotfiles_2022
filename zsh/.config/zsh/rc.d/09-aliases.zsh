#!/bin/zsh

# Aliases

# File related commands
alias cat="bat -p"
alias caty="bat -p -l yaml"
alias -g OY="-oyaml | caty"

# Exa
#alias l="exa --long --header --all --sort type --git"
#alias ls="exa --long --header --all --sort type --git --group"

# Nvim
alias nvimz="nvim ~/.config/zsh"

# C drive
alias koti="cd /mnt/c/"

alias kotig="cd /mnt/c/Git"

alias motrix="cd /mnt/c/Git/motrix_new"

# Git shortcuts
alias gitaall='git add --all'
alias gitdel='git branch --delete'
alias gitcom='git commit'
alias gitchk='git checkout'
alias gitcln='git clone'
alias gitreb='git rebase'
alias gitstat='git status'
alias gitstash='git stash'
alias gitstashp='git stash pop'
alias gitpull='git pull origin HEAD'
alias gitpf='git pull && git fetch'
alias gitpush='git push origin HEAD'
alias gitaacapf='git add -A && git commit --amend --no-edit && git push origin HEAD --force'
alias gitdev='git checkout development'
alias gitdevp='git checkout develop'

gitct() {
    if [ -z "$1"]
    then
        echo "The branch must be specified."
    else
        git checkout --track origin/$1
    fi
}

# kpf <service> <port>
kpf() {
    if [ -z "$1" ]
    then
        echo "The service must be specified."
    elif [ -z "$2" ]
    then
        echo "The port cannot be empty"
    else
        kubectl port-forward deployment/$argv[1] $argv[2]:80
    fi
}

# tw <function>
tw() {
    if [ -z "$1" ]
    then
      echo "The window name must be specified."
    elif [ -z "$2" ]
    then
      echo "The function must be specified."
    elif ! pgrep -u tmux > /dev/null; then
        tmux new-sessions -A -s main
    else
        tmux neww $2 && tmux rename-window $1
    fi
}

# nvimc <path>
nvimc() {
    if [ -z $1 ]
    then
        nvim ~/.config/nvim/init.lua
    else
        nvim ~/.config/nvim/$1
    fi
}
