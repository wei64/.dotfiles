
# ==== 自动补全 start ===================
autoload -Uz compinit
compinit

# 自动补全 @todo
#[ -f /usr/local/homebrew/etc/bash_completion ] && . /usr/local/homebrew/etc/bash_completion

## k8s补全 @todo
source <(kubectl completion zsh)
# 如果把kubectl简写为k
source <(kubectl completion zsh | sed s/kubectl/k/g)
#source <(kubectl completion bash | sed s/kubectl/k/g)

# 阿里云cli命令专用
# complete -C '/usr/local/bin/aliyun_completer' aliyuncli
# ==== 自动补全 end  ===================
