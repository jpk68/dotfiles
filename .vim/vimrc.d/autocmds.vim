" treat .h files as .hpp for syntax highlighting
augroup cpp_headers
    autocmd!
    autocmd BufRead,BufWrite *.h set filetype=cpp
augroup END

" disable automatic commenting on newline
augroup no_auto_comment
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=cro
augroup END

" use tabs instead of spaces for makefiles
autocmd FileType make setlocal noexpandtab

" delete trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
