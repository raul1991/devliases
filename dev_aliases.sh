#!/bin/bash

# sudo docker related aliases
alias _d='sudo docker'
alias _di='sudo docker image ls'
alias _dni='sudo docker image ls | head -n'
alias _dc='sudo docker container ps'
alias _dnc='sudo docker container ps | head -n'
alias _dv='sudo docker volume ls'
alias _dnv='sudo docker volume ls | head -n'
alias _dn='sudo docker network ls'
alias _dnn='sudo docker network ls | head -n'
alias _dt='sudo docker tag'
alias _dp='sudo docker push'

# more pattern specific aliases
alias _dip='sudo docker image ls | grep'
alias _dcp='sudo docker container ls | grep'

_dbi()
{
 sudo docker build "$@"
}

# kubernetes specific aliases
alias _k='kubectl'
alias _kgp='kubectl get pods'
alias _kgd='kubectl get deployments'
alias _kgs='kubectl get services'
alias _kgcm='kubectl get configmaps'
alias _kg='kubectl get'
alias _kdesc='kubectl describe'
alias _kexec='kubectl exec -ti'
alias _kl='kubectl logs'

_kportfwd()
{
 kubectl port-forward "$1" "$2"
}

_kexpose()
{
 kubectl expose deployment/$1 --type="$2" --port $3
}

_kcd()
{
 kubectl create deployment "$1" --image="$2"
}

_kdd()
{
 kubectl delete deployment/$1
}

_kccm()
{
 kubectl create configmap $1
}

_kdcm()
{
  kubectl delete configmap $1
}

_kd()
{
  kubectl delete "$@"
}

_ka()
{
 kubectl apply "$@"
}
