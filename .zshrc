# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/wuzhongyang/.oh-my-zsh

PATH=$PATH
alias phptags='ctags --langmap=php:.engine.inc.module.theme.php  --php-kinds=cdf  --languages=php --exclude=vendor'
alias rmdocker="docker ps -a | grep Exited | awk '{print $1}' | xargs docker rm"
alias rmdocker-none="docker images | grep none | awk '{print $3}' | xargs docker rm"
alias tmux='tmux -2'
alias vim='/home/wuzhongyang/src/vim-master/src/vim'
alias node='/home/wuzhongyang/src/node-v8.11.3-linux-x64/bin/node'
alias npm='/home/wuzhongyang/src/node-v8.11.3-linux-x64/bin/npm'
export DISPLAY=:7 
export GOARCH=amd64
export GOOS=linux
export GOROOT=/home/wuzhongyang/go #注意GOROOT值为Go对应解压路径
export GOPATH=$GOROOT/gopkg:/home/wuzhongyang/go_project
export NODEPATH=/home/wuzhongyang/src/node-v8.11.3-linux-x64/bin
export PATH=$PATH:$NODEPATH:$GOROOT/bin:$GOROOT/gopkg/bin:/home/wuzhongyang/go_project/bin:$HOME/node/bin
export ANSIBLE_ROOT=/home/wuzhongyang/opengrok/source/ansible
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:/usr/lib

ZSH_THEME="agnoster"

plugins=(git autojump git-flow zsh-autosuggestions docker)

# autojump配置
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
[[ -s ~/.autojump/etc/profile.d/autojump.sh  ]] && . ~/.autojump/etc/profile.d/autojump.sh

# oh-my-zsh配置
source $ZSH/oh-my-zsh.sh

# zsh-autosuggestions配置
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=green'

# 设置用户空间
set -g default-command "reattach-to-user-namespace -l /usr/bin/zsh"

# 代理配置
# export http_proxy=http://127.0.0.1:8118
# export https_proxy=http://127.0.0.1:8118

# fzf配置
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# drone配置
export DRONE_SERVER=http://basic:5557
export DRONE_TOKEN=
