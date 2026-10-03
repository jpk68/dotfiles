" treat .h files as .hpp for syntax highlighting
augroup cpp_headers
    autocmd!
    autocmd BufRead,BufWrite,BufNewFile *.h set filetype=cpp
augroup END

" syntax highlighting for service files
augroup service_files
    autocmd!
    autocmd BufRead,BufWrite,BufNewFile *.service,*.socket,*.target,*.timer set filetype=systemd
    autocmd BufRead,BufWrite,BufNewFile /etc/init.d/*,*.openrc,*.openrcconf set filetype=sh
augroup END

" disable automatic commenting on newline
augroup no_auto_comment
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=cro
augroup END

" formatting options for specific file types
autocmd FileType make,go setlocal noexpandtab
autocmd FileType ocaml,toml setlocal shiftwidth=2 tabstop=2
autocmd BufRead,BufWrite,BufNewFile *.sage set filetype=python

" delete trailing whitespace on save, except where it's meaningful (e.g. markdown line breaks)
autocmd BufWritePre *.md,*.markdown let b:skip_trim_trailing_whitespace = 1
autocmd BufWritePre * if !get(b:, 'skip_trim_trailing_whitespace') | let b:_wsview = winsaveview() | silent! %s/\s\+$//e | call winrestview(b:_wsview) | endif

augroup FormatVimScript
    autocmd!
    autocmd BufWritePre *.vim,*.vimrc normal! gg=G``
augroup END
