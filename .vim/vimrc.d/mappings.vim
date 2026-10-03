" set leader key to spacebar
let mapleader = " "

" quit on leader key + q
nnoremap <leader>q :q<CR>

" save/quit on leader key + x
nnoremap <leader>x :x<CR>

" clear search highlight on leader key + h
nnoremap <leader>h :nohlsearch<CR>

" macro to remove comments that start with double slashes
nnoremap <leader>rcl :g/^\s*\/\/\s*/d<CR>
