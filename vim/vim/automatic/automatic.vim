
"--------------------------------------------------------------------------------------------------------------Automatic

" make sure highlighting works all the way down long files
autocmd BufEnter * :syntax sync fromstart

" automatic reloading of .vimrc
autocmd BufWritePost .vimrc source $MYVIMRC | :call RefreshUI()

