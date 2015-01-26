set nu "显示行数
set shortmess=atI 
set cursorline "突出当前行

"自动缩进
set autoindent
set tabstop=4  
set shiftwidth=4
set mouse=a
set ignorecase smartcase    "搜索忽略大小写
set hlsearch                "高亮搜索找到的文本
set smartindent             " 开启新行时使用智能自动缩进
set foldenable              " 开始折叠

set foldmethod=syntax       " 设置语法折叠

set foldcolumn=0            " 设置折叠区域的宽度

setlocal foldlevel=1        " 设置折叠层数为

set foldclose=all           " 设置为自动关闭折叠                            

nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" 用空格键来开关折叠

"vundle
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
Bundle 'Valloric/YouCompleteMe'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help  -- 此处后面都是vundle的使用命令
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused
"   bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"ctags
map <C-F10> :!ctags -R *<CR>
map <C-F11> :NERDTree <CR>
map <C-F12> :TlistToggle<CR>
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
"winmanager

"""""""""""""""""""""""""""""""

"" winManager setting

"""""""""""""""""""""""""""""""

"设置界面分割
"
""let g:winManagerWindowLayout = "BufExplorer,FileExplorer|TagList"

"let g:winManagerWindowLayout = "TagList|FileExplorer,BufExplorer"
let g:winManagerWindowLayout = "BufExplorer|FileExplorer"


"设置winmanager的宽度，默认为25
"
"let g:winManagerWidth = 30
"
"
"
""定义打开关闭winmanager按键

nmap <silent> <F8> :WMToggle<cr>
"主题颜色
syntax enable
"if has('gui_running')
"set background=light
"else
set background=dark
"endif
"colorscheme desert
colorscheme solarized
let g:solarized_termcolors=256
set t_Co=256
