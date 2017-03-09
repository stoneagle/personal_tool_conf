# 更改shell为zsh
chsh -s /bin/zsh
# 安装oh-my-zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
# 安装vim插件ag所需the_silver_searcher
yum install the_silver_searcher

# 安装go项目开发相关组件
go get -u github.com/cweill/gotests/...
go get -u github.com/nsf/gocode

# 安装环境通用工具
yum install xsel
