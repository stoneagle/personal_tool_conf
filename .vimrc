filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
"vundle���"
Plugin 'VundleVim/Vundle.vim'   

"���̲��"
Plugin 'shemerey/vim-project'

"html����ģ�廯��� "
Plugin 'mattn/emmet-vim'"

"tagbar��������ctagʹ��
Plugin 'majutsushi/tagbar'

"��������Ĵ��벹ȫ
"YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
" neocomplcache����YCMȡ��
" Plugin 'Shougo/neocomplcache.vim'
" python��ȫ
" Plugin 'davidhalter/jedi-vim'

"airline��״̬����ʾ
Plugin 'bling/vim-airline'

"php����������ɲ鿴�ڽ�����manual��������ע��
Plugin 'spf13/PIV'

"��״�ļ��ṹ"
Plugin 'The-NERD-tree'

"����λ���ƶ�"
Plugin 'EasyMotion'

"���벹ȫ��ģ���������"
Plugin 'UltiSnips'

"�ļ���ѯ
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }

"���Ų�ȫ
Plugin 'Auto-Pairs'

"ע�Ͷ���"
Plugin 'Tabular'

"������б༭"
Plugin 'terryma/vim-multiple-cursors'

"����ע��""
Plugin 'tpope/vim-commentary'

"�﷨��������첽
"��Ҫvim�汾8.0����
Plugin 'w0rp/ale'

"Plugin 'DBGp-client'
"vim��xdebug���Խӿڲ��

"yaml��������ԭ�������ļ�����ܿ�
Plugin 'stephpy/vim-yaml'

"go��vim�﷨���
Plugin 'fatih/vim-go'
"go�Ĵ��벹ȫ
Plugin 'nsf/gocode', {'rtp': 'vim/'}
"go�Ĳ�������
Plugin 'buoto/gotests-vim'

"lua��ز��
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'

"��������ʾ���
Plugin 'vim-scripts/bufexplorer.zip'

"���봹ֱ��������
Plugin 'nathanaelkane/vim-indent-guides'

"�鿴function��call tree
Plugin 'hari-rangarajan/CCTree' 

"�������š���ǩ��
Plugin 'tpope/vim-surround'

"����git
Plugin 'tpope/vim-fugitive'

"python����ʾ���
Plugin 'andviro/flake8-vim'  

"ȫ�ֲ��Ҳ��
Plugin 'rking/ag.vim'

"vim��tmux�Ľ���
Plugin 'benmills/vimux'

"async�첽����
Plugin 'skywind3000/asyncrun.vim'

"cscope�������
Plugin 'brookhong/cscope.vim'

"angularjs��ts���
Plugin 'leafgarland/typescript-vim'

"�շ���ת
Plugin 'bkad/CamelCaseMotion'

call vundle#end()            
filetype plugin indent on
let mapleader=','
"����ɾ��nerdtree�е��ļ�
set modifiable
"��vim�˳�ʱ�������������ݱ�����xsel��(��Ҫxsel��xmanager��vimx��֧��)
autocmd VimLeave * call system("xsel -ib", getreg('+'))
"ʹ��ϵͳ���а�
set clipboard=unnamedplus

"������ģʽ����
cmap <TAB>  <C-d>

"ag��������
let g:ago="/home/wuzhongyang/go_project/src"
let g:agt="/home/wuzhongyang/opengrok/source/time"

"go��ز������
au BufRead,BufNewFile *.go set filetype=go
"�ڿ���������Ŀʱ���ڿ���
let g:go_fmt_command = 'goimports'    "save fileʱ�ȿ��Ը�ʽ�����룬�ֿ����Զ�������������
set completeopt-=preview            "�ر��Զ���ȫʱ�ĺ�����ʾ����
"����GoTest��GoBuild��������������ʾ
let g:go_list_type                   = "quickfix"
"��quickfixĬ���ڵײ���ʾ
autocmd FileType qf wincmd J
let g:go_highlight_functions         = 1
let g:go_highlight_methods           = 1
let g:go_highlight_fields            = 1
let g:go_highlight_structs           = 1
let g:go_highlight_interfaces        = 1
let g:go_highlight_operators         = 1
let g:go_highlight_build_constraints = 1
"install��ǰGolang��Ŀ
nnoremap <Leader>agi :AsyncRun! go install %<CR>
"ӳ��GoTests����ز����ļ�����
nnoremap <Leader>goi :GoInstall <CR>
nnoremap <Leader>gor :GoRun <CR>
"��Ҫ����ftplugin�е�go.vim��vimĿ¼�£��������ӳ��
map <Leader>goa :wa<CR> :GolangTestCurrentPackage<CR>
map <Leader>gof :wa<CR> :GolangTestFocused<CR>

"��������Ŀ�ݼ�
imap <C-e> <C-x><C-o>

"CamelCaseMotion���
map <S-w> <Plug>CamelCaseMotion_w
map <S-b> <Plug>CamelCaseMotion_b
map <S-e> <Plug>CamelCaseMotion_e

"���ڼ��ݲ��־ɰ汾vim
"let $VIMRUNTIME = '/usr/share/vim/vim72'

" python-jedi���
" Ĭ��ʹ��python����python��python3��̬�޷���ͬ���ڣ���ͬ����ʱ����ʾdyn��vim
" --version��Ȼ��ʾ+python/dyn������ʹ��ʱ��Ч
let g:jedi#force_py_version=3
let g:jedi#popup_select_first=0
" ��Ӱ��go��ƥ��
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
" " ���治��Ҫ
" " let g:neocomplcache_enable_camel_case_completion = 1
" " let g:neocomplcache_enable_underbar_completion   = 1
" " imap <expr> -  pumvisible() ? '\<Plug>(neocomplcache_start_unite_quick_match)' : '-' 
" " let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
" " let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
" " ���治��Ҫ

" youcompleteme  Ĭ��tab  s-tab ���Զ���ȫ��ͻ
" �ӵ�3�������ַ��Ϳ�ʼ����ƥ����
let g:ycm_min_num_of_chars_for_completion = 3 
" �����Զ�����
let g:ycm_auto_trigger = 1
" ��ע��������Ҳ�ܲ�ȫ
let g:ycm_complete_in_comments = 1
" �﷨�ؼ��ֲ�ȫ
let g:ycm_seed_identifiers_with_syntax=1
" ����YCM�����ַ����ڲ�ȫ
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
" ���� YCM ���ڱ�ǩ����
let g:ycm_collect_identifiers_from_tags_files=1
" �ر�Ԥ����(�����ˢ��)
let g:ycm_add_preview_to_completeopt = 0
" " ֧��ultisnips
" let g:ycm_use_ultisnips_completer = 1
" ����ƥ����
let g:ycm_cache_omnifunc= 0
let g:ycm_max_diagnostics_to_display=16
" ����50Mb�Ľ�ֹʹ��ycm
let g:ycm_disable_for_files_larger_than_kb = 50000
"�رռ���.ycm_extra_conf.py��ʾ
let g:ycm_confirm_extra_conf=0
" ע�ͺ��ַ����е�����Ҳ�ᱻ���벹ȫ
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" tab��ȫ��Ӱ�������tabʹ�� 
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
" �ص���ʼĿ¼��ִ������
nnoremap <Leader>if :execute "cd ".init_path<CR> :FZF <CR>

" ale�����Զ�У��
" let g:ale_linters = { 'go': ['gofmt -e', 'go vet', 'golint', 'errcheck', 'gometalinter', 'gosimple', 'staticcheck'], }
" let g:ale_linters = { 'go': ['gofmt -e', 'go vet', 'golint', 'gometalinter', 'gosimple', 'staticcheck'], }
" ���ֲ�����ɼ�
let g:ale_sign_column_always = 1
" �ı����;����ʶ��
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

" airlineչʾ
" let g:ale_statusline_format = ['X %d', 'W %d', 'ok'] 
" �Զ�����ת�����п�ݼ�
nmap <silent> <C-e> <Plug>(ale_previous_wrap)
nmap <silent> <C-w> <Plug>(ale_next_wrap)

" asyncrun
" ��ƥ�����ֲ���ʾ(������asyncrun curl����Ϊ��Ч)
autocmd BufEnter * set errorformat&
nnoremap <Leader>arc :AsyncRun! errcheck %<CR>
" �Զ�����quickfix
augroup MyGroup
    autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)
augroup END

" cscope���
let g:cscope_silent = 1
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
"" s: ����C���Է��ţ������Һ��������ꡢö��ֵ�ȳ��ֵĵط� 
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
"" g: ���Һ������ꡢö�ٵȶ����λ�ã�����ctags���ṩ�Ĺ��� 
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
"" d: ���ұ��������õĺ��� 
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
"" c: ���ҵ��ñ������ĺ��� 
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
"" t: ����ָ�����ַ��� 
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
"" e: ����egrepģʽ���൱��egrep���ܣ��������ٶȿ���� 
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
"" f: ���Ҳ����ļ�������vim��find���� 
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
"" i: ���Ұ������ļ����ļ� 
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>"

" UltiSnip
let g:UltiSnipsExpandTrigger="ii"
let g:UltiSnipsJumpForwardTrigger="II"
let g:UltiSnipsJumpBackwardTrigger="OO"

" nerdtree
let NERDTreeWinSize=20              "����nerdtree�Ŀ��
let NERDTreeShowHidden=1
map <F7> :NERDTreeToggle<CR> 
autocmd VimEnter * NERDTree

" BufExplorer��ݼ�
nnoremap <F8> :BufExplorer<CR>

" tagbar
nmap <F9> :TagbarToggle<CR>
let g:tagbar_ctags_bin='ctags'   "ctags�����·��
let g:tagbar_width=30
let g:tagbar_autofocus = 0
" �ر�tagbar�Զ�����
" autocmd VimEnter * nested TagbarOpen

" ��������
let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256
colorscheme molokai

" vim-indent-guides������������
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1 
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd guibg=red ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

" easymotion
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)

" fugitive��vim�е�git���
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
set nocompatible                    "�ر�vi����ģʽ"
set number                          "��ʾ�к�"
set relativenumber                  "��ʾ����к�
set cursorline                      "ͻ����ʾ��ǰ��" 
set ruler                           "��״̬�����"
set shiftwidth=4                    "�趨<<��>>�����ƶ�ʱ���Ϊ4"
set softtabstop=4                   "ʹ�˸���ܹ�һ��ɾ��4���ո�" 
set tabstop=4                       "�趨tab����Ϊ4" 
autocmd FileType typescript set sw=2
autocmd FileType typescript set ts=2
autocmd FileType typescript set sts=2
set autoindent
set expandtab
set nobackup                        "�����ļ�ʱ�����б���" 
set autochdir                       "�Զ��л�����ǰĿ¼Ϊ�ļ�����Ŀ¼" 
set backupcopy=yes                  "���ñ���ʱ��ΪΪ����"
set ignorecase smartcase            "����ʱ���Դ�Сд������һ�������ϴ�д��ĸʱ��Ȼ���ֶԴ�Сд����" 
set incsearch                       "������������ʱ��ֱ����ʾ�������" 
set hlsearch                        "����ʱ������ʾ���ҵ�����Ϣ" 
set noerrorbells                    "�رմ�����Ϣ����" 
set novisualbell                    "�ر�ʹ�ÿ�������������" 
set t_vb=                           "�ÿմ�������"

set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
autocmd BufNewFile,BufRead *.json set filetype=javascript           "��jsonʱ����javascript�﷨������ʾ
set termencoding=utf-8              "vim������Ļ��ʾ�ı���"
set wrap
" set nowrapscan                    "��ֹ���������ļ�����ʱ��������
" set showmatch                     "��������ʱ�����ݵ���ת��ƥ��Ķ�Ӧ����
" set matchtime=2                   "������ת��ƥ�����ŵ�ʱ��
set magic                           "����ħ��" 
" set hidden                        "��������δ������޸�ʱ�л�����������ʱ�޸���vim���𱣴� 
set smartindent                         "��������ʱʹ���Զ����� " 
set backspace=indent,eol,start          "���趨�ڲ���״̬���޷����˸����delete��ɾ���س��� " 
set cmdheight=1                         "�趨�����е�����Ϊ1" 
set laststatus=2                        "��ʾ״̬����Ĭ��ֵΪ1���޷���ʾ״̬��" 

set statusline=%!statusString 

" �۵�
set foldenable              "�����۵�"
set foldmethod=indent       "indent manual syntax �����﷨�۵�" 
set foldcolumn=1            "�����۵�����Ŀ��" 
setlocal foldlevel=1        "�����۵�����"
" set foldclose=all"        "����Ϊ�Զ��ر��۵�

" �Զ���״̬�� "
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 
"״̬������״̬" 
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
 
" ���ո�����۵��л�"
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" ���ڷָ�ʱ���л���Ҫ�������ȼ����Σ���ͨ��������д���ת��;������һ������ӳ�����ٰ�������"
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" һЩ�����ӳ��ת���﷨"
nnoremap <leader>1 :set filetype=xhtml<CR>
nnoremap <leader>2 :set filetype=css<CR>
nnoremap <leader>3 :set filetype=javascript<CR>
nnoremap <leader>4 :set filetype=php<CR>
nnoremap <leader>h :noh<CR>
nnoremap <leader>wa :wa<CR>
nnoremap <leader>q :q<CR>

" ȫ������ѡ�е��ı�"
vnoremap <silent> <Leader>f y/<c-r>=escape(@", "\\/.*$^~[]")<cr><cr>
vnoremap <silent> <Leader>F y?<c-r>=escape(@", "\\/.*$^~[]")<cr><cr>

" ��F12ִ�ж�Ӧ�ļ�
autocmd FileType php map <F12> :!php %<CR>      
autocmd FileType lua map <F12> :!lua %<CR>     
autocmd FileType python map <F12> :!python %<CR>    

" �����ֵ� ~/.vim/bundle/dict/�ļ���·��"
"<ctrl-x>_<ctrl-k>����ʾ"
"autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/javascript.dic
"autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/node.dic
"autocmd filetype css set dictionary+=$VIMFILES/bundle/vim-dict/dict/css.dic
"autocmd filetype php set dictionary+=$VIMFILES/bundle/vim-dict/dict/php.dic

" tabularize���ݶ�Ӧ�����Զ�����
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

" ճ��ģʽ
set pastetoggle=<F2>

" ǰ�˴���
au BufNewFile,BufRead *.volt set filetype=html      "��volt��׺��ʽ������Ϊhtml����
