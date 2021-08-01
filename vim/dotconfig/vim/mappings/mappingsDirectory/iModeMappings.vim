
" ... iModeMappings.vim

" move line up and down
inoremap <silent> <C-j> <esc>:m .+1<CR>==gi
inoremap <silent> <C-k> <esc>:m .-2<CR>==gi

" undo chunk at a time
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

