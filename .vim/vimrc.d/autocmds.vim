" treat .h files as .hpp for syntax highlighting
augroup cpp_headers
    autocmd!
    autocmd BufRead,BufWrite *.h set filetype=cpp
augroup END

" use real tabs in makefiles
autocmd FileType make setlocal noexpandtab
