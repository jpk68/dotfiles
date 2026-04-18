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

" formatting options for specific file types
autocmd FileType make,go setlocal noexpandtab
autocmd FileType ocaml setlocal shiftwidth=2 tabstop=2
