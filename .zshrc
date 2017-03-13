# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/wuzhongyang/.oh-my-zsh

PATH=$PATH
alias phptags='ctags --langmap=php:.engine.inc.module.theme.php  --php-kinds=cdf  --languages=php --exclude=vendor'
alias tmux='tmux -2'
export DISPLAY=:7 
export GOARCH=amd64
export GOOS=linux
export GOROOT=/home/wuzhongyang/go #注意GOROOT值为Go对应解压路径
export GOPATH=$GOROOT/gopkg:/home/wuzhongyang/go_project
export PATH=$PATH:$GOROOT/bin:$GOROOT/gopkg/bin:/home/wuzhongyang/go_project/bin

# ZSH_THEME="robbyrussell"
# ZSH_THEME="bira"
ZSH_THEME="agnoster"
# ZSH_THEME="ys"
# ZSH_THEME="af-magic"

COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
[[ -s ~/.autojump/etc/profile.d/autojump.sh  ]] && . ~/.autojump/etc/profile.d/autojump.sh

plugins=(git autojump)
source $ZSH/oh-my-zsh.sh
# source ~/.oh-my-zsh/plugins/incr/incr*.zsh

# 设置用户空间
set -g default-command "reattach-to-user-namespace -l /usr/bin/zsh"
