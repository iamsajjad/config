
"--------------------------------------------------------------------------------------------------Key Binding 'Mapping'

" Rebind <Leader> key
let mapleader = ","
" map key to dismiss search highlightedness
map <bs> :noh<CR>
" map sort function to a key
vnoremap <Leader>s :sort<CR>
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation
" grep for word under cursor
noremap <Leader>g :grep -rw '<C-r><C-w>' .<CR>
" aliases for window switching (browser captures ctrl-w)
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-k> <C-w>k
noremap <C-j> <C-w>j
" similarly ctrl-q doesnt work, so use leader-q for block visual mode
nnoremap <leader>q <C-Q>
"autocompletion
inoremap <c-space> <c-n>
inoremap <c-s-space> <c-p>
" Ctrl + Shift + Up / Down To Move Line Up or Down
" in normal mode
noremap <c-s-up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
noremap <c-s-down> ddp
nmap <C-d> mzyyp`z
" in visual mode
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

