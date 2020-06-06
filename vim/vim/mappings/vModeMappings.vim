
"---------------------------------------------------------------------------------------------------Visual Mode Mappings

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" move line or block of code up and down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" indentation
vnoremap < <gv
vnoremap > >gv

