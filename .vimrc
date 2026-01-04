for file in glob('~/.vim/vimrc.d/*.vim', 1, 1)
    execute 'source' file
endfor
