
"---------------------------------------------------------------------------------------------------------Cursor Configs

" remeber cursor position
if has("autocmd")
  " enable file type detection.
  filetype plugin indent on
  " when editing a file, always jump to the last known cursor position.
  " don't do it when the position is invalid or when inside an event handler
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
else
    " for old version of vim
    set autoindent " set vanilla autoindenting on
endif

" places to look for tags files:
set tags=./tags,tags
set tags+=tags;/

