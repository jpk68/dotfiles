call plug#begin()
Plug 'morhetz/gruvbox'

Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-abolish'

Plug 'https://codeberg.org/ziglang/zig.vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'elixir-editors/vim-elixir'

Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

colorscheme slate

" don't run zig fmt on quit
let g:zig_fmt_autosave = 0

" use markdown syntax for vimwiki
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': 'md'}]
