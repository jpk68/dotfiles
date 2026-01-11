" treat .h files as .hpp for syntax highlighting
augroup cpp_headers
    autocmd!
    autocmd BufRead,BufWrite *.h set filetype=cpp
augroup END

" use tabs instead of spaces for makefiles
autocmd FileType make setlocal noexpandtab

" disable automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" delete trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
