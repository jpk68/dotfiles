" set leader key to spacebar
let mapleader = " "

" quit on leader key + q
nnoremap <leader>q :q<CR>

" save/quit on leader key + x
nnoremap <leader>x :x<CR>

" clear search highlight on leader key + h
nnoremap <leader>h :nohlsearch<CR>

" remove full-line comments, using '#' or '//' depending on the type of file
let s:hash_comment_filetypes = ['python', 'cmake', 'sh', 'bash', 'zsh', 'fish',
            \ 'make', 'yaml', 'toml', 'conf', 'ruby', 'perl']

function! s:RemoveCommentLines() abort
    if index(s:hash_comment_filetypes, &filetype) >= 0
        " '#' comments, but keep shebang lines (#!)
        let l:pattern = '^\s*#!\@!'
    else
        let l:pattern = '^\s*\/\/'
    endif
    execute 'g/' . l:pattern . '/d'
endfunction

nnoremap <leader>rcl :call <SID>RemoveCommentLines()<CR>
