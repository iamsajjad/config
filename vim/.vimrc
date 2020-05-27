".vimrc

"----------------------------------------------------------------------------------Plugins

" Install vim Package Manager vim-plug GitHub [https://github.com/junegunn/vim-plug.git]
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')
" Tools
    Plug 'airblade/vim-gitgutter'
    Plug 'junegunn/goyo.vim'
    Plug 'vifm/vifm.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'tpope/vim-fugitive' " git tools package
    Plug 'tpope/vim-surround'
    Plug 'vim-airline/vim-airline'
    Plug 'preservim/nerdtree'
    Plug 'mbbill/undotree'
" Syntax
    Plug 'tpope/vim-markdown'
    Plug 'ap/vim-css-color' "Displays a preview of colors with CSS 
    Plug 'vim-scripts/fountain.vim'
    Plug 'vim-syntastic/syntastic'
" Colorscheme
    Plug 'fcpg/vim-fahrenheit' " Base theme
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'ajh17/Spacegray.vim'
    Plug 'chriskempson/base16-vim'
    Plug 'tomasr/molokai'
    Plug 'cocopon/iceberg.vim'
    Plug 'wolf-dog/nighted.vim'
    Plug 'endel/vim-github-colorscheme'
    Plug 'morhetz/gruvbox'
    Plug 'sjl/badwolf'
" Languages
    Plug 'rust-lang/rust.vim'
call plug#end()

"-------------------------------------------------------------------------General Settings

" must be first, changes behaviour of other settings
set nocompatible
" 256 colors
set t_Co=256
" syntax highlighting
syntax on
" sane text files
set fileformat=unix
" file encoding
set encoding=utf-8
" enter spaces when tab is pressed
set expandtab
" break lines when line length increases
set textwidth=120
" use 4 spaces to represent tab
set tabstop=4
set softtabstop=4
" number of spaces to use for auto indent
set shiftwidth=4
" copy indent from current line when starting a new line
set autoindent
"make sure highlighting works all the way down long files
autocmd BufEnter * :syntax sync fromstart
" allow cursor to be positioned one char past end of line
" and apply operations to all of selection including last char
set selection=exclusive
" allow backgrounding buffers without writing them
" and remember marks/undo for backgrounded buffers
set hidden
" Keep more context when scrolling off the end of a buffer
set scrolloff=3
" allow cursor keys to go right off end of one line, onto start of next
set whichwrap+=<,>,[,]
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" no line wrapping
set nowrap
" Show current line number
set number
" Show relative line numbers
set relativenumber
" when joining lines, don't insert two spaces after punctuation
set nojoinspaces
" Make searches case-sensitive only if they contain upper-case characters
set ignorecase
set smartcase
" show search matches as the search pattern is typed
set incsearch
" search-next wraps back to start of file
set wrapscan
set hlsearch
" new spilt [vs right] or [hs below]
set splitbelow splitright
" make tab completion for files/buffers act like bash
set wildmenu
" highlight last search matches
" display cursor co-ords at all times
set ruler
" highlight cursor line
set cursorline
" display number of selected chars, lines, or size of blocks.
set showcmd
" show matching brackets, etc, for 1/10th of a second
set showmatch
set matchtime=1
" enables filetype specific plugins
filetype plugin on
" enables filetype detection
filetype on
" enable automatic yanking to and pasting from the selection
set clipboard+=unnamed
" make NERDTree show hidden files and directories
let NERDTreeShowHidden=1

"----------------------------------------------------------------------------Color Configs 

" theme mode
set background=dark
" Default theme
colorscheme fahrenheit
" Change theme
map <F1> :colorscheme fahrenheit<CR>
map <F2> :colorscheme gruvbox<CR>
map <F3> :colorscheme badwolf<CR>
map <F4> :colorscheme github<CR>
map <F5> :colorscheme molokai<CR>

"--------------------------------------------------------------------Key Binding 'Mapping' 

" map key to dismiss search highlightedness
map <bs> :oh<CR>
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

"---------------------------------------------------------------------Split Screen Configs

function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf 
endfunction

" Taggle Between Split Files
nnoremap <Tab> <C-w>w
" Swip Split Files
nnoremap <s-Up> :call MarkWindowSwap()<CR> <C-w>k :call DoWindowSwap()<CR>
nnoremap <s-Left> :call MarkWindowSwap()<CR> <C-w>h :call DoWindowSwap()<CR>
nnoremap <s-Down> :call MarkWindowSwap()<CR> <C-w>j :call DoWindowSwap()<CR>
nnoremap <s-Right> :call MarkWindowSwap()<CR> <C-w>l :call DoWindowSwap()<CR>
" Resize Split Files
nnoremap <C-Up> :resize -1<CR> 
nnoremap <C-Down> :resize +1<CR>
nnoremap <C-Left> :vertical resize -1<CR>
nnoremap <C-Right> :vertical resize +1<CR>

"------------------------------------------------------------------Remember Cursor Postion 

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

