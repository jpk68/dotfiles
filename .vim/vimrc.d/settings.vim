syntax on
filetype plugin indent on
set background=dark
set laststatus=2
set title

set number relativenumber
set cursorline
set nowrap
set incsearch hlsearch
set autoindent smartindent cindent
set ignorecase smartcase
set nocompatible
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
set nobackup
set nowb
set noswapfile

set wildmenu
set magic
set wildmode=longest,list,full

" use thin cursor in insert mode
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"
