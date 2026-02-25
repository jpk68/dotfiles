call plug#begin()
Plug 'https://codeberg.org/ziglang/zig.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-abolish'
Plug 'vimwiki/vimwiki'
call plug#end()

" options for gruvbox theme
let g:gruvbox_italic = 1
colorscheme gruvbox

" don't run zig fmt on quit
let g:zig_fmt_autosave = 0

" use markdown syntax for vimwiki
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': 'md'}]
