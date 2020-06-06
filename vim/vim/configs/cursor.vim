
"------------------------------------------------------------------------------------------------Remember Cursor Postion

if has("autocmd")
    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    filetype plugin indent on

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

else
    " if old vim, set vanilla autoindenting on
    set autoindent

endif " has("autocmd")

" places to look for tags files:
set tags=./tags,tags

" recursively search file's parent dirs for tags file
" set tags+=./tags;/
" recursively search cwd's parent dirs for tags file
set tags+=tags;/

