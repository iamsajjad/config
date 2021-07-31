
" ... iModeMappings.vim

" move line up and down >>> Alt + k/j
inoremap <silent> <A-k> <C-o>:m-2<CR>
inoremap <silent> <A-j> <C-o>:m+<CR>

" undo chunk at a time
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

