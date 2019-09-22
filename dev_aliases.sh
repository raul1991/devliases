#!/bin/bash

# docker related aliases
alias _di='docker image ls'
alias _dni='docker image ls | head -n'
alias _dc='docker container ps'
alias _dnc='docker container ps | head -n'
alias _dv='docker volume ls'
alias _dnv='docker volume ls | head -n'
alias _dn='docker network ls'
alias _dnn='docker network ls | head -n'


# more pattern specific aliases
alias dip='docker image ls | grep'
alias dcp='docker container ls | grep'

_dbi()
{
 docker build -t $1 .
}

# kubernetes specific aliases

alias _kgp='kubectl get pods'
alias _kgd='kubectl get deployments'
alias _kgs='kubectl get services'
alias _kgcm='kubectl get configmaps'

_kcd()
{
 kubectl create deployment/$1 --name=$2 --image=$3
}

_kdd()
{
 kubectl delete deployment/$1
}

