
" ... vModeMappings.vim

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" substitute command
" hit 'y' to relpace one at time or hit 'a' to confirm all replacements
vnoremap <Leader>r "hy:%s/<C-r>h//gc<left><left><left>

" move line or block of code up and down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" indentation
vnoremap < <gv
vnoremap > >gv

