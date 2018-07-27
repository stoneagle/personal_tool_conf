# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin:$HOME/bin/local_bin

alias phptags='ctags --langmap=php:.engine.inc.module.theme.php  --php-kinds=cdf  --languages=php'
alias vim='/home/wuzhongyang/src/vim-master/src/vim'
alias node='/home/wuzhongyang/src/node-v8.11.3-linux-x64/bin/node'
alias npm='/home/wuzhongyang/src/node-v8.11.3-linux-x64/bin/npm'

export PS1='[\u@\h \W]\$ '
export GOARCH=amd64
export GOOS=linux
export GOROOT=/home/wuzhongyang/go #注意GOROOT值为Go对应解压路径
export GOPATH=$GOROOT/gopkg:/home/wuzhongyang/go_project
export NODEPATH=/home/wuzhongyang/src/node-v8.11.3-linux-x64/bin
export PATH=$PATH:$NODEPATH:$GOROOT/bin:$GOROOT/gopkg/bin:/home/wuzhongyang/go_project/bin:$HOME/node/bin
