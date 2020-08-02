
" ... automatic.vim

" make sure highlighting works all the way down long files
autocmd BufEnter * :syntax sync fromstart

" automatically strip trailing spaces on save
autocmd BufWritePre * :%s/\s\+$//e

" automatic reloading of .vimrc
autocmd BufWritePost .vimrc source $MYVIMRC | :call RefreshUI()

