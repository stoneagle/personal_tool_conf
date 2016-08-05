filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
Bundle 'gmarik/vundle'  
"vundle���"

Plugin 'shemerey/vim-project'
"���̲��"

Plugin 'mattn/emmet-vim'"
"php �����ʽ����� "

"Plugin 'thisivan/vim-bufexplorer'"
"����ע�Ͳ��"

Plugin 'taglist.vim'
"taglist��������ctagʹ��" 

Plugin 'SuperTab'
"tab��ȫЧ��������ʹ�ã�YouCompleteMe����php���Ѻ�

Plugin 'The-NERD-tree'
"��״�ļ��ṹ"

Plugin 'EasyMotion'
"����λ���ƶ�"

"Plugin 'xptemplate'
Plugin 'UltiSnips'
"���벹ȫ��ģ���������"

Plugin 'honza/vim-snippets'
"����鼯��

Plugin 'ctrlp.vim'
"�ļ���ѯ

Plugin 'Auto-Pairs'
"���Ų�ȫ

"Plugin 'Valloric/YouCompleteMe'
"��������Ĵ��벹ȫ

Plugin 'Tabular'
"ע�Ͷ���"

Plugin 'terryma/vim-multiple-cursors'
"������б༭"

Plugin 'tpope/vim-commentary'
"����ע��""

Plugin 'scrooloose/syntastic' "
"�﷨���Ĳ������������д���ˡ���ĩ�ֺ�������(�����Ҫ�ӷֺŵ�����)�ȵ��﷨�������Զ�������"
"��Ҫvim�汾7.15"

"Plugin 'DBGp-client'
"vim��xdebug���Խӿڲ��

Plugin 'stephpy/vim-yaml'
"yaml��������ԭ�������ļ�����ܿ�

Plugin 'fatih/vim-go'
"go��vim�﷨���

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'
"lua��ز��

Plugin 'bsdelf/bufferhint'
"��������ʾ���

Plugin 'nsf/gocode', {'rtp': 'vim/'}
"go�Ĵ��벹ȫ

Plugin 'nathanaelkane/vim-indent-guides'
"���봹ֱ��������

Plugin 'hari-rangarajan/CCTree' 
"�鿴function��call tree

Plugin 'tpope/vim-surround'
"�������š���ǩ��

Plugin 'tpope/vim-fugitive'
"����git

call vundle#end()            
filetype plugin indent on
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"��������Ŀ�ݼ�
imap <C-e> <C-x><C-o>

"���ڼ��ݲ��־ɰ汾vim
"let $VIMRUNTIME = "/usr/share/vim/vim72"
syntax on

nnoremap - :call bufferhint#Popup()<CR>
nnoremap \ :call bufferhint#LoadPrevious()<CR>

let g:UltiSnipsExpandTrigger="ii"
let g:UltiSnipsJumpForwardTrigger="II"
let g:UltiSnipsJumpBackwardTrigger="OO"

let NERDTreeWinSize=20 
"����nerdtree�Ŀ��

let Tlist_Show_One_File = 1
"��ͬʱ��ʾ����ļ���tag��ֻ��ʾ��ǰ�ļ���
let Tlist_Exit_OnlyWindow = 1
"���taglist���������һ�����ڣ����˳�vim
let Tlist_Use_Right_Window = 1
"���Ҳര������ʾtaglist����"      

let Tlist_WinWidth=30

let mapleader=','
let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256
colorscheme molokai

"vim-indent-guides������������
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1 
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd guibg=red ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

"����emmet���ֻ��html��css��Ч
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"set tags=/home/wuzhongyang/tags"
set tags =tags;
set nocompatible "�ر�vi����ģʽ"
set number "��ʾ�к�"
set cursorline "ͻ����ʾ��ǰ��" 
set ruler  "��״̬�����"
set shiftwidth=4 "�趨<<��>>�����ƶ�ʱ���Ϊ4"
set softtabstop=4 "ʹ�˸���ܹ�һ��ɾ��4���ո�" 
set tabstop=4 "�趨tab����Ϊ4" 
set autoindent
set expandtab
set nobackup "�����ļ�ʱ�����б���" 
set autochdir "�Զ��л�����ǰĿ¼Ϊ�ļ�����Ŀ¼" 
set backupcopy=yes "���ñ���ʱ��ΪΪ����"
set ignorecase smartcase "����ʱ���Դ�Сд������һ�������ϴ�д��ĸʱ��Ȼ���ֶԴ�Сд����" 
set incsearch "������������ʱ��ֱ����ʾ�������" 
set hlsearch "����ʱ������ʾ���ҵ�����Ϣ" 
set noerrorbells "�رմ�����Ϣ����" 
set novisualbell "�ر�ʹ�ÿ�������������" 
set t_vb=  "�ÿմ�������"

set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8 "vim������Ļ��ʾ�ı���"

" set showmatch " 
" ��������ʱ�����ݵ���ת��ƥ��Ķ�Ӧ���� "
" set matchtime=2 "
" ������ת��ƥ�����ŵ�ʱ�� "
set magic " ����ħ�� " 
" set hidden " 
" ��������δ������޸�ʱ�л�����������ʱ�޸���vim���𱣴� "
set smartindent " ��������ʱʹ���Զ����� " 
set backspace=indent,eol,start "���趨�ڲ���״̬���޷����˸����delete��ɾ���س��� " 
set cmdheight=1 "�趨�����е�����Ϊ1" 
set laststatus=2 "��ʾ״̬����Ĭ��ֵΪ1���޷���ʾ״̬��" 

set statusline=%!statusString 

set foldenable "�����۵�"
set foldmethod=indent "indent manual syntax �����﷨�۵�" 
set foldcolumn=1 "�����۵�����Ŀ��" 
setlocal foldlevel=1 "�����۵�����"

" set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 
" �Զ���״̬�� "
" set foldclose=all"
" ����Ϊ�Զ��ر��۵�"
" set nowrapscan "
" ��ֹ���������ļ�����ʱ�������� "

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
 
"ӳ����"
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
"���ո�����۵��л�"

"���ڷָ�ʱ���л���Ҫ�������ȼ����Σ���ͨ��������д���ת��;������һ������ӳ�����ٰ�������"
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"һЩ�����ӳ��ת���﷨"
nnoremap <leader>1 :set filetype=xhtml<CR>
nnoremap <leader>2 :set filetype=css<CR>
nnoremap <leader>3 :set filetype=javascript<CR>
nnoremap <leader>4 :set filetype=php<CR>
nnoremap <leader>h :noh<CR>
nnoremap <leader>q :q<CR>

"��ݹرռ�"
nnoremap <leader>wq :wq<CR>
nnoremap <leader>pg :PluginInstall<CR>

"ȫ������ѡ�е��ı�"
vnoremap <silent> <Leader>f y/<c-r>=escape(@", "\\/.*$^~[]")<cr><cr>
vnoremap <silent> <Leader>F y?<c-r>=escape(@", "\\/.*$^~[]")<cr><cr>

"python�ļ���һ������"
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab

"php�ļ�����F12ִ�б��ļ�"
autocmd FileType php map <F12> :!php %<CR>
"lua�ļ�����F12ִ�б��ļ�"
autocmd FileType lua map <F12> :!lua %<CR>
"go�ļ�����F12ִ�б��ļ�"
autocmd FileType go map <F12> :!go run %<CR>
"python�ļ�����F12ִ�б��ļ�"
autocmd FileType python map <F12> :!python %<CR>

"�����ֵ� ~/.vim/bundle/dict/�ļ���·��"
"<ctrl-x>_<ctrl-k>����ʾ"
"autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/javascript.dic
"autocmd filetype javascript set dictionary+=$VIMFILES/bundle/vim-dict/dict/node.dic
"autocmd filetype css set dictionary+=$VIMFILES/bundle/vim-dict/dict/css.dic
"autocmd filetype php set dictionary+=$VIMFILES/bundle/vim-dict/dict/php.dic

map <leader>da :DoxAuthor<CR>
map <leader>df :Dox<CR>
map <leader>db :DoxBlock<CR>
map <leader>dc a /* */<LEFT><LEFT><LEFT>

"��nerdtree�л���Ϊf8��ctrl+n����г�ͻ
map <F8> :NERDTreeToggle<CR> 
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

nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

"YouCompleteMe���ܲ�ȫ����
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" ����ʾ����vimʱ���ycm_extra_conf�ļ�����Ϣ
let g:ycm_confirm_extra_conf = 0
" ��������tag�Ĳ�ȫ����������֮�������Ҫ�ı�ǩ·��
let g:ycm_collect_identifiers_from_tags_files = 1
" �������岹ȫ
let g:ycm_seed_identifiers_with_syntax = 1
"ע�ͺ��ַ����е�����Ҳ�ᱻ���벹ȫ
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" ����� 2 ���ַ���ʼ��ȫ
let g:ycm_min_num_of_chars_for_completion= 2
" ��ֹ����ƥ����,ÿ�ζ���������ƥ����
let g:ycm_cache_omnifunc=0
"��ע��������Ҳ�ܲ�ȫ
let g:ycm_complete_in_comments = 1
"���ַ���������Ҳ�ܲ�ȫ
let g:ycm_complete_in_strings = 1
"��Vim�Ĳ�ȫ�˵���Ϊ��һ��IDEһ��
set completeopt=longest,menu 
"�����ݽ���ȫ
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "�س���ѡ�е�ǰ��
"�������Ҽ�����Ϊ ����ʾ������Ϣ
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
" ���������漸�ָ�ʽ���ļ�������ycm
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
      \ 'mail' : 1
      \}
"���ùؽ��ִ�����ȫ
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.', ' ', '(', '[', '&'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }
let g:ycm_cache_omnifunc = 1
let g:ycm_use_ultisnips_completer = 1

