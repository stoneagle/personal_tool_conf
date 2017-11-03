filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
"vundle插件"
Plugin 'VundleVim/Vundle.vim'   

"工程插件"
Plugin 'shemerey/vim-project'

"html代码模板化插件 "
Plugin 'mattn/emmet-vim'"

"tagbar插件，配合ctag使用
Plugin 'majutsushi/tagbar'

"基于语义的代码补全
"YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
" neocomplcache，被YCM取代
" Plugin 'Shougo/neocomplcache.vim'
" python补全
" Plugin 'davidhalter/jedi-vim'

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

"文件查询
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }

"括号补全
Plugin 'Auto-Pairs'

"注释对齐"
Plugin 'Tabular'

"多光标多行编辑"
Plugin 'terryma/vim-multiple-cursors'

"快速注释""
Plugin 'tpope/vim-commentary'

"语法检测插件，异步
"需要vim版本8.0以上
Plugin 'w0rp/ale'

"Plugin 'DBGp-client'
"vim的xdebug调试接口插件

"yaml处理插件，原环境长文件处理很卡
Plugin 'stephpy/vim-yaml'

"go的vim语法插件
Plugin 'fatih/vim-go'
"go的代码补全
Plugin 'nsf/gocode', {'rtp': 'vim/'}
"go的测试生成
Plugin 'buoto/gotests-vim'

"lua相关插件
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'

"缓冲区显示插件
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
Plugin 'andviro/flake8-vim'  

"全局查找插件
Plugin 'rking/ag.vim'

"vim与tmux的交互
Plugin 'benmills/vimux'

"async异步操作
Plugin 'skywind3000/asyncrun.vim'

"cscope操作插件
Plugin 'brookhong/cscope.vim'

"angularjs的ts插件
Plugin 'leafgarland/typescript-vim'

"驼峰跳转
Plugin 'bkad/CamelCaseMotion'

call vundle#end()            
filetype plugin indent on
let mapleader=','
"允许删除nerdtree中的文件
set modifiable
"当vim退出时，将剪贴板内容保存在xsel中(需要xsel与xmanager与vimx的支持)
autocmd VimLeave * call system("xsel -ib", getreg('+'))
"使用系统剪切板
set clipboard=unnamedplus

"命令行模式补齐
cmap <TAB>  <C-d>

"ag查找设置
let g:ago="/home/wuzhongyang/go_project/src"
let g:agt="/home/wuzhongyang/opengrok/source/time"

"go相关插件部署
au BufRead,BufNewFile *.go set filetype=go
"在开发大型项目时过于卡顿
let g:go_fmt_command = 'goimports'    "save file时既可以格式化代码，又可以自动插入包导入语句
set completeopt-=preview            "关闭自动补全时的函数提示窗口
"避免GoTest与GoBuild等命令的输出不显示
let g:go_list_type                   = "quickfix"
"让quickfix默认在底部显示
autocmd FileType qf wincmd J
let g:go_highlight_functions         = 1
let g:go_highlight_methods           = 1
let g:go_highlight_fields            = 1
let g:go_highlight_structs           = 1
let g:go_highlight_interfaces        = 1
let g:go_highlight_operators         = 1
let g:go_highlight_build_constraints = 1
"install当前Golang项目
nnoremap <Leader>agi :AsyncRun! go install %<CR>
"映射GoTests的相关测试文件生成
nnoremap <Leader>goi :GoInstall <CR>
nnoremap <Leader>gor :GoRun <CR>
"需要拷贝ftplugin中的go.vim到vim目录下，进行相关映射
map <Leader>goa :wa<CR> :GolangTestCurrentPackage<CR>
map <Leader>gof :wa<CR> :GolangTestFocused<CR>

"函数补齐的快捷键
imap <C-e> <C-x><C-o>

"CamelCaseMotion插件
map <S-w> <Plug>CamelCaseMotion_w
map <S-b> <Plug>CamelCaseMotion_b
map <S-e> <Plug>CamelCaseMotion_e

"用于兼容部分旧版本vim
"let $VIMRUNTIME = '/usr/share/vim/vim72'

" python-jedi插件
" 默认使用python可是python和python3静态无法共同存在，共同存在时会显示dyn，vim
" --version虽然显示+python/dyn，但是使用时无效
let g:jedi#force_py_version=3
let g:jedi#popup_select_first=0
" 会影响go的匹配
"set completeopt=longest,menuone
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0

" neocomplcache
" let g:acp_enableAtStartup                        = 0
" let g:neocomplcache_enable_at_startup            = 1
" let g:neocomplcache_enable_smart_case            = 1
" let g:neocomplcache_min_syntax_length            = 5
" let g:neocomplcache_lock_buffer_name_pattern     = '\*ku\*'
" let g:neocomplcache_enable_auto_select           = 0
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" "autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType python setlocal omnifunc=jedi#completions
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" if !exists('g:neocomplcache_force_omni_patterns')
"   let g:neocomplcache_force_omni_patterns = {}
" endif
" let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" let g:neocomplcache_force_omni_patterns.go = '\h\w*\.\?'
" let g:neocomplcache_force_omni_patterns.python = '\%([^. \t]\.\|^\s*@\)\w*'
" " 下面不需要
" " let g:neocomplcache_enable_camel_case_completion = 1
" " let g:neocomplcache_enable_underbar_completion   = 1
" " imap <expr> -  pumvisible() ? '\<Plug>(neocomplcache_start_unite_quick_match)' : '-' 
" " let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
" " let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
" " 上面不需要

" youcompleteme  默认tab  s-tab 和自动补全冲突
" 从第3个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion = 3 
" 允许自动触发
let g:ycm_auto_trigger = 1
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
" 设置YCM不在字符串内补全
let g:ycm_complete_in_strings = 0
let g:ycm_key_list_select_completion=['<C-n>', '<C-j>']
let g:ycm_key_list_previous_completion=['<C-p>', '<C-k>']
let g:ycm_filetype_blacklist = {
			\ 'tagbar' : 1,
			\ 'qf' : 1,
			\ 'notes' : 1,
			\ 'markdown' : 1,
			\ 'unite' : 1,
			\ 'text' : 1,
			\ 'vimwiki' : 1,
			\ 'pandoc' : 1,
			\ 'infolog' : 1,
			\ 'mail' : 1,
			\ 'mundo': 1,
			\ 'fzf': 1,
			\ 'ctrlp' : 1
			\}
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 关闭预览框(界面回刷新)
let g:ycm_add_preview_to_completeopt = 0
" " 支持ultisnips
" let g:ycm_use_ultisnips_completer = 1
" 缓存匹配项
let g:ycm_cache_omnifunc= 0
let g:ycm_max_diagnostics_to_display=16
" 大于50Mb的禁止使用ycm
let g:ycm_disable_for_files_larger_than_kb = 50000
"关闭加载.ycm_extra_conf.py提示
let g:ycm_confirm_extra_conf=0
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" tab补全会影响基本的tab使用 
" function! MyTabFunction ()
"     let line = getline('.')
"     let substr = strpart(line, -1, col('.')+1)
"     let substr = matchstr(substr, "[^ \t]*$")
"     if strlen(substr) == 0
"         return "\<tab>"
"     endif
"     return pumvisible() ? "\<c-n>" : "\<c-x>\<c-o>"
" endfunction
" inoremap <tab> <c-r>=MyTabFunction()<cr>
nnoremap <leader>gt :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

" fzf
let init_path = $PWD 
nnoremap <Leader>f :FZF <CR>
" 回到初始目录并执行搜索
nnoremap <Leader>if :execute "cd ".init_path<CR> :FZF <CR>

" ale错误自动校验
" let g:ale_linters = { 'go': ['gofmt -e', 'go vet', 'golint', 'errcheck', 'gometalinter', 'gosimple', 'staticcheck'], }
" let g:ale_linters = { 'go': ['gofmt -e', 'go vet', 'golint', 'gometalinter', 'gosimple', 'staticcheck'], }
" 保持侧边栏可见
let g:ale_sign_column_always = 1
" 改变错误和警告标识符
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

" airline展示
" let g:ale_statusline_format = ['X %d', 'W %d', 'ok'] 
" 自定义跳转错误行快捷键
nmap <silent> <C-e> <Plug>(ale_previous_wrap)
nmap <silent> <C-w> <Plug>(ale_next_wrap)

" asyncrun
" 非匹配文字不显示(体现在asyncrun curl等行为无效)
autocmd BufEnter * set errorformat&
nnoremap <Leader>arc :AsyncRun! errcheck %<CR>
" 自动弹出quickfix
augroup MyGroup
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
augroup END

" cscope插件
let g:cscope_silent = 1
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
"" s: 查找C语言符号，即查找函数名、宏、枚举值等出现的地方 
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
"" g: 查找函数、宏、枚举等定义的位置，类似ctags所提供的功能 
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
"" d: 查找本函数调用的函数 
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
"" c: 查找调用本函数的函数 
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
"" t: 查找指定的字符串 
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
"" e: 查找egrep模式，相当于egrep功能，但查找速度快多了 
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
"" f: 查找并打开文件，类似vim的find功能 
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
"" i: 查找包含本文件的文件 
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>"

" UltiSnip
let g:UltiSnipsExpandTrigger="ii"
let g:UltiSnipsJumpForwardTrigger="II"
let g:UltiSnipsJumpBackwardTrigger="OO"

" nerdtree
let NERDTreeWinSize=20              "设置nerdtree的宽度
let NERDTreeShowHidden=1
map <F7> :NERDTreeToggle<CR> 
autocmd VimEnter * NERDTree

" BufExplorer快捷键
nnoremap <F8> :BufExplorer<CR>

" tagbar
nmap <F9> :TagbarToggle<CR>
let g:tagbar_ctags_bin='ctags'   "ctags程序的路径
let g:tagbar_width=30
let g:tagbar_autofocus = 0
" 关闭tagbar自动开启
" autocmd VimEnter * nested TagbarOpen

" 主题配置
let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256
colorscheme molokai

" vim-indent-guides缩进对齐配置
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1 
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd guibg=red ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

" easymotion
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)

" fugitive在vim中的git插件
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gm :Gmove<CR>
nnoremap <Leader>gb :Gblame<CR>
" nnoremap <Leader>gd :Gdelete<CR>
" nnoremap <Leader>gg :Ggrep<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gl :Git lg<CR>
nnoremap <Leader>gp :Git push<CR>


syntax on
set tags =tags;
set nocompatible                    "关闭vi兼容模式"
set number                          "显示行号"
set relativenumber                  "显示相对行号
set cursorline                      "突出显示当前行" 
set ruler                           "打开状态栏标号"
set shiftwidth=4                    "设定<<和>>命令移动时宽度为4"
set softtabstop=4                   "使退格键能够一次删除4个空格" 
set tabstop=4                       "设定tab长度为4" 
autocmd FileType typescript set sw=2
autocmd FileType typescript set ts=2
autocmd FileType typescript set sts=2
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
autocmd BufNewFile,BufRead *.json set filetype=javascript           "打开json时，用javascript语法高亮显示
set termencoding=utf-8              "vim用于屏幕显示的编码"
set wrap
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

" 折叠
set foldenable              "开启折叠"
set foldmethod=indent       "indent manual syntax 设置语法折叠" 
set foldcolumn=1            "设置折叠区域的宽度" 
setlocal foldlevel=1        "设置折叠层数"
" set foldclose=all"        "设置为自动关闭折叠

" 自定义状态栏 "
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
 
" 按空格进行折叠切换"
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" 窗口分割时，切换需要连续按热键两次，再通过方向进行窗口转移;将其中一个按键映射后减少按键操作"
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 一些不错的映射转换语法"
nnoremap <leader>1 :set filetype=xhtml<CR>
nnoremap <leader>2 :set filetype=css<CR>
nnoremap <leader>3 :set filetype=javascript<CR>
nnoremap <leader>4 :set filetype=php<CR>
nnoremap <leader>h :noh<CR>
nnoremap <leader>wa :wa<CR>
nnoremap <leader>q :q<CR>

" 全文搜索选中的文本"
vnoremap <silent> <Leader>f y/<c-r>=escape(@", "\\/.*$^~[]")<cr><cr>
vnoremap <silent> <Leader>F y?<c-r>=escape(@", "\\/.*$^~[]")<cr><cr>

" 按F12执行对应文件
autocmd FileType php map <F12> :!php %<CR>      
autocmd FileType lua map <F12> :!lua %<CR>     
autocmd FileType python map <F12> :!python %<CR>    

" 设置字典 ~/.vim/bundle/dict/文件的路径"
"<ctrl-x>_<ctrl-k>打开提示"
"autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/javascript.dic
"autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/node.dic
"autocmd filetype css set dictionary+=$VIMFILES/bundle/vim-dict/dict/css.dic
"autocmd filetype php set dictionary+=$VIMFILES/bundle/vim-dict/dict/php.dic

" tabularize根据对应符号自动对齐
nnoremap <Leader>a= :Tabularize /=<CR>
vnoremap <Leader>a= :Tabularize /=<CR>
nnoremap <Leader>ag= :Tabularize /:=<CR>
vnoremap <Leader>ag= :Tabularize /:=<CR>
nnoremap <Leader>a: :Tabularize /:\zs<CR>
vnoremap <Leader>a: :Tabularize /:\zs<CR>
nnoremap <Leader>a> :Tabularize /=><CR> 
vnoremap <Leader>a> :Tabularize /=><CR>
nnoremap <Leader>a/ :Tabularize /\/\/<CR> 
vnoremap <Leader>a/ :Tabularize /\/\/<CR>

" 粘贴模式
set pastetoggle=<F2>

" 前端处理
au BufNewFile,BufRead *.volt set filetype=html      "将volt后缀格式，设置为html处理
