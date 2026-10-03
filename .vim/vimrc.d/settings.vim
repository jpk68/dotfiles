syntax on
filetype plugin indent on

set laststatus=2
set title

set clipboard=unnamed
set ttyfast

set number
set cursorline
set nowrap
set incsearch hlsearch
set autoindent
set ignorecase smartcase
set expandtab
set splitbelow splitright

set tabstop=4
set shiftwidth=4
set softtabstop=4
set scrolloff=8
set colorcolumn=100

set encoding=utf-8
set fileencoding=utf-8

set ffs=unix
set history=100
set noundofile
set nobackup
set nowritebackup
set noswapfile

set wildmenu
set magic
set wildmode=longest:list,full
set pumheight=12

set updatetime=300
set signcolumn=yes

let g:netrw_banner=0

" use thin cursor in insert mode
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"
