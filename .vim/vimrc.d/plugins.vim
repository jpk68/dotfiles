call plug#begin()
Plug 'https://codeberg.org/ziglang/zig.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-abolish'
call plug#end()

colorscheme gruvbox

" don't run zig fmt on quit
let g:zig_fmt_autosave = 0
