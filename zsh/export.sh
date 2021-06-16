
# ======================================
# Golang
# ======================================
export GOROOT=$HOME/8langs/golang/go
export GOPATH=$HOME/9tool/go
export GO111MODULE=on
export GOPROXY=https://goproxy.cn,direct
#go env -w GOSUMDB=off  # 关闭GOSUMDB命令
export GOSUMDB=sum.golang.google.cn
export GOPRIVATE=gitcodecloud.lenovo.com.cn


# ======================================
# Path
# ======================================
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=~/bin:/usr/local/homebrew/sbin:/usr/local/homebrew/bin:$GOROOT/bin:$GOPATH/bin:$PATH:~/.composer/vendor/bin
export PATH="/usr/local/homebrew/opt/mongodb@3.6/bin:$PATH"

# ======================================
##### virtualenv
# ======================================
# export PYTHONPATH=/usr/local/homebrew/lib/python2.7/site-packages:$PYTHONPATH
#export WORKON_HOME='~/8langs/python'
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/homebrew/bin/python   # 这是 brew 安装的最新版
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
#source /usr/local/homebrew/bin/virtualenvwrapper.sh
##### virtualenv


# ======================================
# brew
# ======================================
# 解决brew的API rate limit exceeded for xxx的问题
if [ -f /usr/local/homebrew/bin/brew ]; then
    export HOMEBREW_GITHUB_API_TOKEN=c6a68fca50ca17e1911e847adf06fae2635ce114
fi

export PLANTUML_JAR=/usr/local/bin/plantuml.jar


export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8


# ======================================
# svn专用
# ======================================
export SVN_EDITOR=vim


# ======================================
# java专用
# ======================================
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`



