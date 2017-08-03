# 旧版本初始化脚本
# 更改shell为zsh
chsh -s /bin/zsh
# 安装oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
# 安装vim插件ag所需the_silver_searcher
yum install the_silver_searcher
# 通用复制剪贴板工具
yum install xsel
# 带有图形化的vimx
yum install vim-X11.x86_64

# 安装go项目开发相关组件
go get -u github.com/cweill/gotests/...
go get -u github.com/nsf/gocode

# shell环境使用xmanager

# 安装zsh-autosuggestions插件
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
