filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Bundle 'gmarik/vundle'  
"vundle插件"

Plugin 'shemerey/vim-project'
"工程插件"

"Plugin 'mattn/emmet-vim'"
"php 代码格式化插件 "

"Plugin 'thisivan/vim-bufexplorer'"
"智能注释插件"

Plugin 'taglist.vim'
"taglist插件，配合ctag使用" 

Plugin 'SuperTab'
"tab补全效果"

Plugin 'The-NERD-tree'
"树状文件结构"

Plugin 'EasyMotion'
"方便位置移动"

"Plugin 'xptemplate'
Plugin 'UltiSnips'
"代码补全，模板代码生成"
Plugin 'honza/vim-snippets'
"代码块集合

Plugin 'ctrlp.vim'
"文件查询

Plugin 'Auto-Pairs'
"括号补全"

Plugin 'Tabular'
"注释对齐"

Plugin 'scrooloose/syntastic' "
"语法检测的插件，变量类型写错了、句末分号忘加了(针对需要加分号的语言)等等语法错误都能自动检测出来"
"需要vim版本7.15"

"Plugin 'DBGp-client'
"vim的xdebug调试接口插件

Plugin 'fatih/vim-go'
"go的vim语法插件

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'
"lua相关插件

Plugin 'bsdelf/bufferhint'
"缓冲区显示插件

Plugin 'nsf/gocode', {'rtp': 'vim/'}
"go的代码补全

call vundle#end()            
filetype plugin indent on

"用于兼容部分旧版本vim
"let $VIMRUNTIME = "/usr/share/vim/vim72"
syntax on

nnoremap - :call bufferhint#Popup()<CR>
nnoremap \ :call bufferhint#LoadPrevious()<CR>

let g:UltiSnipsExpandTrigger="ii"
let g:UltiSnipsJumpForwardTrigger="II"
let g:UltiSnipsJumpBackwardTrigger="OO"

let NERDTreeWinSize=20 
"设置nerdtree的宽度

let Tlist_Show_One_File = 1
"不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1
"如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1
"在右侧窗口中显示taglist窗口"      

let Tlist_WinWidth=30

let mapleader=','
let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256
colorscheme molokai

"set tags=/home/wuzhongyang/tags"
set tags =tags;
set nocompatible "关闭vi兼容模式"
set number "显示行号"
set cursorline "突出显示当前行" 
set ruler  "打开状态栏标号"
set shiftwidth=4 "设定<<和>>命令移动时宽度为4"
set softtabstop=4 "使退格键能够一次删除4个空格" 
set tabstop=4 "设定tab长度为4" 
set autoindent
set expandtab
set nobackup "覆盖文件时不进行备份" 
set autochdir "自动切换到当前目录为文件所在目录" 
set backupcopy=yes "设置备份时行为为覆盖"
set ignorecase smartcase "搜索时忽略大小写，但有一个或以上大写字母时仍然保持对大小写敏感" 
set incsearch "输入搜索内容时就直接显示搜索结果" 
set hlsearch "搜索时高亮显示被找到的信息" 
set noerrorbells "关闭错误信息响铃" 
set novisualbell "关闭使用可视响铃代替呼叫" 
set t_vb=  "置空错误铃声"

set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8 "vim用于屏幕显示的编码"

" set showmatch " 
" 插入括号时，短暂地跳转到匹配的对应括号 "
" set matchtime=2 "
" 短暂跳转到匹配括号的时间 "
set magic " 设置魔术 " 
" set hidden " 
" 允许在有未保存的修改时切换缓冲区，此时修改由vim负责保存 "
set smartindent " 开启新行时使用自动缩进 " 
set backspace=indent,eol,start "不设定在插入状态，无法用退格键和delete键删除回车符 " 
set cmdheight=1 "设定命令行的行数为1" 
set laststatus=2 "显示状态栏，默认值为1，无法显示状态栏" 

set statusline=%!statusString 

set foldenable "开启折叠"
set foldmethod=marker "indent manual syntax 设置语法折叠" 
set foldcolumn=1 "设置折叠区域的宽度" 
setlocal foldlevel=1 "设置折叠层数"

" set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 
" 自定义状态栏 "
" set foldclose=all"
" 设置为自动关闭折叠"
" set nowrapscan "
" 禁止在搜索到文件两段时重新搜索 "

"状态栏各个状态" 
let statusHead	="%-.50f\ %h%m%r" 
let statusBreakPoint	="%<" 
let statusSeparator	="|" 
let statusFileType	="%{((&ft\ ==\ \"help\"\ \|\|\ &ft\ ==\ \"\")?\"\":\"[\".&ft.\"]\")}" 
let statusAscii	="\{%b:0x%B\}" 
let statusCwd	="%-.50{getcwd()}" 
let statusBody	=statusFileType.statusSeparator.statusAscii.statusSeparator."\ ".statusBreakPoint.statusCwd
let statusEncoding	="[%{(&fenc\ ==\ \"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]" 
let statusBlank	="%=" 
let statusKeymap	="%k" 
let statusRuler	="%-12.(%lL,%c%VC%)\ %P" 
let statusTime	="%{strftime(\"%y-%m-%d %T\",getftime(expand(\"%\")))}" 
let statusEnd=statusKeymap."\ ".statusEncoding.statusRuler."\ ".statusTime 
let statusString=statusHead.statusBody.statusBlank.statusEnd 
 
"映射区"
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
"按空格进行折叠切换"

"窗口分割时，切换需要连续按热键两次，再通过方向进行窗口转移;将其中一个按键映射后减少按键操作"
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"一些不错的映射转换语法"
nnoremap <leader>1 :set filetype=xhtml<CR>
nnoremap <leader>2 :set filetype=css<CR>
nnoremap <leader>3 :set filetype=javascript<CR>
nnoremap <leader>4 :set filetype=php<CR>
nnoremap <leader>h :noh<CR>
nnoremap <leader>q :q<CR>

"快捷关闭键"
nnoremap <leader>wq :wq<CR>
nnoremap <leader>pg :PluginInstall<CR>

"全文搜索选中的文本"
vnoremap <silent> <Leader>f y/<c-r>=escape(@", "\\/.*$^~[]")<cr><cr>
vnoremap <silent> <Leader>F y?<c-r>=escape(@", "\\/.*$^~[]")<cr><cr>

"python文件的一般设置"
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab
autocmd FileType python map <F12> :!python %<CR>

"php文件，按F12执行本文件"
autocmd FileType php map <F12> :!php %<CR>
"lua文件，按F12执行本文件"
autocmd FileType lua map <F12> :!lua %<CR>
"go文件，按F12执行本文件"
autocmd FileType go map <F12> :!go run %<CR>

"设置字典 ~/.vim/bundle/dict/文件的路径"
"<ctrl-x>_<ctrl-k>打开提示"
"autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/javascript.dic
"autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/node.dic
"autocmd filetype css set dictionary+=$VIMFILES/bundle/vim-dict/dict/css.dic
"autocmd filetype php set dictionary+=$VIMFILES/bundle/vim-dict/dict/php.dic

map <leader>da :DoxAuthor<CR>
map <leader>df :Dox<CR>
map <leader>db :DoxBlock<CR>
map <leader>dc a /* */<LEFT><LEFT><LEFT>

map <C-n> :NERDTreeToggle<CR> 
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)

nnoremap <leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <leader>pcf :call PhpCsFixerFixFile()<CR>

nnoremap <Leader>a= :Tabularize /=<CR>
vnoremap <Leader>a= :Tabularize /=<CR>
nnoremap <Leader>a: :Tabularize /:\zs<CR>
vnoremap <Leader>a: :Tabularize /:\zs<CR>
nnoremap <Leader>a> :Tabularize /=><CR> 
vnoremap <Leader>a> :Tabularize /=><CR>

set pastetoggle=<F2>

imap <C-e> <C-x><C-o>

