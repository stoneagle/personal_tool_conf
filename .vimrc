filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
"vundle插件"
Bundle 'gmarik/vundle'   

"工程插件"
Plugin 'shemerey/vim-project'

"html代码模板化插件 "
Plugin 'mattn/emmet-vim'"

"tagbar插件，配合ctag使用
Plugin 'majutsushi/tagbar'

"基于语义的代码补全
"YouCompleteMe对于php不友好，非常慢，而且安装过重
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'SuperTab'
Plugin 'Shougo/neocomplcache.vim'
"用于完善-号选择的插件
Plugin 'Shougo/unite.vim'

"airline，状态栏显示
Plugin 'bling/vim-airline'

"php开发插件，可查看内建函数manual，并生成注释
Plugin 'spf13/PIV'

"树状文件结构"
Plugin 'The-NERD-tree'

"方便位置移动"
Plugin 'EasyMotion'

"代码补全，模板代码生成"
Plugin 'UltiSnips'

"代码块集合
Plugin 'honza/vim-snippets'

"文件查询
Plugin 'ctrlpvim/ctrlp.vim'

"括号补全
Plugin 'Auto-Pairs'

"注释对齐"
Plugin 'Tabular'

"多光标多行编辑"
Plugin 'terryma/vim-multiple-cursors'

"快速注释""
Plugin 'tpope/vim-commentary'

"语法检测的插件，变量类型写错了、句末分号忘加了(针对需要加分号的语言)等等语法错误都能自动检测出来"
"需要vim版本7.15"
Plugin 'scrooloose/syntastic' "

"Plugin 'DBGp-client'
"vim的xdebug调试接口插件

"yaml处理插件，原环境长文件处理很卡
Plugin 'stephpy/vim-yaml'

"go的vim语法插件
Plugin 'fatih/vim-go'
"go的代码补全
Plugin 'nsf/gocode', {'rtp': 'vim/'}

"lua相关插件
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'

"缓冲区显示插件
"Plugin 'bsdelf/bufferhint'
Plugin 'vim-scripts/bufexplorer.zip'

"代码垂直缩进对齐
Plugin 'nathanaelkane/vim-indent-guides'

"查看function的call tree
Plugin 'hari-rangarajan/CCTree' 

"增加括号、标签等
Plugin 'tpope/vim-surround'

"管理git
Plugin 'tpope/vim-fugitive'

"python的提示插件
Bundle 'andviro/flake8-vim'  

call vundle#end()            
filetype plugin indent on

"go相关插件部署
au BufRead,BufNewFile *.go set filetype=go
let g:go_fmt_command = "goimports"    "save file时既可以格式化代码，又可以自动插入包导入语句
"let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
" let g:syntastic_go_checkers = ['govet', 'errcheck', 'go']
" let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
" let g:go_list_type = "quickfix"
"函数补齐的快捷键
imap <C-e> <C-x><C-o>

"用于兼容部分旧版本vim
"let $VIMRUNTIME = "/usr/share/vim/vim72"

"neocomplcache"
let g:acp_enableAtStartup                        = 0
let g:neocomplcache_enable_at_startup            = 1
let g:neocomplcache_enable_smart_case            = 1
"let g:neocomplcache_enable_camel_case_completion = 1
"let g:neocomplcache_enable_underbar_completion   = 1
let g:neocomplcache_min_syntax_length            = 5
let g:neocomplcache_lock_buffer_name_pattern     = '\*ku\*'
let g:neocomplcache_enable_auto_select           = 0
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
imap <expr> -  pumvisible() ? "\<Plug>(neocomplcache_start_unite_quick_match)" : '-' 
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" let g:neocomplcache_force_omni_patterns.go = '\h\w*\.\?'
" let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
" let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'



" Syntastic  
" let g:syntastic_python_checker = 'pylint'  
let g:syntastic_python_checker = 'pep8'  

"UltiSnip
let g:UltiSnipsExpandTrigger="ii"
let g:UltiSnipsJumpForwardTrigger="II"
let g:UltiSnipsJumpBackwardTrigger="OO"

"nerdtree
let NERDTreeWinSize=20              "设置nerdtree的宽度
map <F7> :NERDTreeToggle<CR> 
autocmd VimEnter * NERDTree

"BufExplorer快捷键
nnoremap <F8> :BufExplorer<CR>

"tagbar
nmap <F9> :TagbarToggle<CR>
let g:tagbar_ctags_bin='ctags'   "ctags程序的路径
let g:tagbar_width=30
let g:tagbar_autofocus = 0
autocmd VimEnter * nested TagbarOpen

let mapleader=','

"主题配置
let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256
colorscheme molokai

"vim-indent-guides缩进对齐配置
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1 
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd guibg=red ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

"easymotion
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)

"set tags=/home/wuzhongyang/tags"
syntax on
set tags =tags;
set nocompatible                    "关闭vi兼容模式"
set number                          "显示行号"
set cursorline                      "突出显示当前行" 
set ruler                           "打开状态栏标号"
set shiftwidth=4                    "设定<<和>>命令移动时宽度为4"
set softtabstop=4                   "使退格键能够一次删除4个空格" 
set tabstop=4                       "设定tab长度为4" 
set autoindent
set expandtab
set nobackup                        "覆盖文件时不进行备份" 
set autochdir                       "自动切换到当前目录为文件所在目录" 
set backupcopy=yes                  "设置备份时行为为覆盖"
set ignorecase smartcase            "搜索时忽略大小写，但有一个或以上大写字母时仍然保持对大小写敏感" 
set incsearch                       "输入搜索内容时就直接显示搜索结果" 
set hlsearch                        "搜索时高亮显示被找到的信息" 
set noerrorbells                    "关闭错误信息响铃" 
set novisualbell                    "关闭使用可视响铃代替呼叫" 
set t_vb=                           "置空错误铃声"

set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8              "vim用于屏幕显示的编码"
" set nowrapscan                    "禁止在搜索到文件两段时重新搜索
" set showmatch                     "插入括号时，短暂地跳转到匹配的对应括号
" set matchtime=2                   "短暂跳转到匹配括号的时间
set magic                           "设置魔术" 
" set hidden                        "允许在有未保存的修改时切换缓冲区，此时修改由vim负责保存 
set smartindent                         "开启新行时使用自动缩进 " 
set backspace=indent,eol,start          "不设定在插入状态，无法用退格键和delete键删除回车符 " 
set cmdheight=1                         "设定命令行的行数为1" 
set laststatus=2                        "显示状态栏，默认值为1，无法显示状态栏" 

set statusline=%!statusString 

"折叠
set foldenable              "开启折叠"
set foldmethod=indent       "indent manual syntax 设置语法折叠" 
set foldcolumn=1            "设置折叠区域的宽度" 
setlocal foldlevel=1        "设置折叠层数"
" set foldclose=all"        "设置为自动关闭折叠

"自定义状态栏 "
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 
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
 
"按空格进行折叠切换"
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

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

"按F12执行对应文件
autocmd FileType php map <F12> :!php %<CR>      
autocmd FileType lua map <F12> :!lua %<CR>     
autocmd FileType go map <F12> :!go run %<CR>    
autocmd FileType python map <F12> :!python %<CR>    

"设置字典 ~/.vim/bundle/dict/文件的路径"
"<ctrl-x>_<ctrl-k>打开提示"
"autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/javascript.dic
"autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/node.dic
"autocmd filetype css set dictionary+=$VIMFILES/bundle/vim-dict/dict/css.dic
"autocmd filetype php set dictionary+=$VIMFILES/bundle/vim-dict/dict/php.dic

"tabularize根据对应符号自动对齐
nnoremap <Leader>a= :Tabularize /=<CR>
vnoremap <Leader>a= :Tabularize /=<CR>
nnoremap <Leader>a: :Tabularize /:\zs<CR>
vnoremap <Leader>a: :Tabularize /:\zs<CR>
nnoremap <Leader>a> :Tabularize /=><CR> 
vnoremap <Leader>a> :Tabularize /=><CR>
nnoremap <Leader>a/ :Tabularize /\/\/<CR> 
vnoremap <Leader>a/ :Tabularize /\/\/<CR>

"粘贴模式
set pastetoggle=<F2>

"前端处理
au BufNewFile,BufRead *.volt set filetype=html      "将volt后缀格式，设置为html处理
