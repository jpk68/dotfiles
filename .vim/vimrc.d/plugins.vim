call plug#begin()
Plug 'https://codeberg.org/ziglang/zig.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'bfrg/vim-c-cpp-modern'
Plug 'tpope/vim-abolish'
Plug 'vimwiki/vimwiki'
call plug#end()

colorscheme solarized

" don't run zig fmt on quit
let g:zig_fmt_autosave = 0

" use markdown syntax for vimwiki
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': 'md'}]
