
" ... iModeMappings.vim

" move line up and down
inoremap <silent> <C-j> <C-o>:m .+1<CR>
inoremap <silent> <C-k> <C-o>:m .-2<CR>

" undo chunk at a time
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

