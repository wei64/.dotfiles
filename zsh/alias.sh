
# normal
alias la='ls -A'
alias ll='ls -alhF'
alias ls='ls -G'

alias rm='~/bin/rmtrash.sh'


# vpn
alias proxy='export all_proxy=socks5://127.0.0.1:1086;export ALL_PROXY=$all_proxy'
alias unproxy='unset all_proxy;unset ALL_PROXY'
alias httpproxyCharles='export http_proxy=127.0.0.1:8888;export https_proxy=$http_proxy;export HTTP_PROXY=$http_proxy;export HTTPS_PROXY=$http_proxy'
alias httpproxy='export http_proxy=127.0.0.1:1087;export https_proxy=$http_proxy;export HTTP_PROXY=$http_proxy;export HTTPS_PROXY=$http_proxy'
alias unhttpproxy='unset http_proxy;unset https_proxy;unset HTTP_PROXY;unset HTTPS_PROXY'
alias proxyget='echo "httpproxy:";echo $http_proxy;echo $https_proxy;echo $HTTP_PROXY;echo $HTTPS_PROXY;echo "all_proxy:";echo $all_proxy;echo $ALL_PROXY'



# k8s
alias kali='export KUBECONFIG=~/.kube/ali.config'
alias kali2='export KUBECONFIG=~/.kube/ali2.config'
alias kali3='export KUBECONFIG=~/.kube/ali3.config'
alias kali4='export KUBECONFIG=~/.kube/ali4.config'
alias kali5='export KUBECONFIG=~/.kube/ali5.config'
alias klocal='export KUBECONFIG=~/.kube/local.config'
alias unkube='unset KUBECONFIG'
alias kget='echo $KUBECONFIG'
alias k='kubectl'

alias kcc='kubectl config current-context'
alias kdp='kubectl delete po'
alias kgc='kubectl config get-contexts'
alias kge='kubectl get events --sort-by='\''{.lastTimestamp}'\'
alias kgp='kubectl get po'
alias kl='kubectl logs '
alias kpf='kubectl port-forward'
alias ksc='kubectl config use-context'
alias kdr='kubectl --dry-run=true'


# weather
alias we='curl wttr.in\?0nqF'
alias we1='curl wttr.in\?1nqF'
alias we2='curl wttr.in\?2nqF'
alias weather='curl wttr.in\?nqF'

