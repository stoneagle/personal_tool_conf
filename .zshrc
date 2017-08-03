# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/wuzhongyang/.oh-my-zsh

PATH=$PATH
alias phptags='ctags --langmap=php:.engine.inc.module.theme.php  --php-kinds=cdf  --languages=php --exclude=vendor'
alias tmux='tmux -2'
alias vim='/home/wuzhongyang/src/vim-master/src/vim'
export DISPLAY=:7 
export GOARCH=amd64
export GOOS=linux
export GOROOT=/home/wuzhongyang/go #注意GOROOT值为Go对应解压路径
export GOPATH=$GOROOT/gopkg:/home/wuzhongyang/go_project
export PATH=$PATH:$GOROOT/bin:$GOROOT/gopkg/bin:/home/wuzhongyang/go_project/bin:$HOME/node/bin
export ANSIBLE_ROOT=/home/wuzhongyang/opengrok/source/ansible

ZSH_THEME="agnoster"

plugins=(git autojump git-flow zsh-autosuggestions)

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

# fzf配置
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

