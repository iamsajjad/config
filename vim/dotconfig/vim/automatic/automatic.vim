
" ... automatic.vim

augroup AUTOMATIC

  " make sure highlighting works all the way down long files
  autocmd BufEnter * :syntax sync fromstart

  " automatically strip trailing spaces on save
  autocmd BufWritePre * :%s/\s\+$//e

  " toggle absolute and relative numbering by insert/normal mode
  autocmd InsertEnter * :set norelativenumber
  autocmd InsertLeave * :set relativenumber

  " remove autocmds from the group
  autocmd!

  " automatic reloading of .vimrc refresh
  autocmd BufWritePost .vimrc source $MYVIMRC | :call Refresh()

augroup end
