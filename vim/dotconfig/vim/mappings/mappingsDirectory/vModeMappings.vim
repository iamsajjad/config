
" ... vModeMappings.vim

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" substitute command
" hit 'y' to relpace one at time or hit 'a' to confirm all replacements
vnoremap <Leader>r "hy:%s/<C-r>h//gc<left><left><left>

" indentation
vnoremap < <gv
vnoremap > >gv

