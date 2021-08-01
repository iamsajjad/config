
" ... vModeMappings.vim

" map sort function to a key
vnoremap <leader>s :sort<CR>

" substitute command
" hit 'y' to relpace one at time or hit 'a' to confirm all replacements
vnoremap <leader>r "hy:%s/<C-r>h//gc<left><left><left>

" indentation
vnoremap < <gv
vnoremap > >gv

" move line or block of line up and down
vnoremap J :move '>+1<CR>gv=gv
vnoremap K :move '<-2<CR>gv=gv

" delete and paste without yank
vnoremap <leader>p "_dP

