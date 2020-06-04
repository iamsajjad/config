"----------------------------------------------------------------------------------------------------------------Plugins

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
    "Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
    Plug 'rust-lang/rust.vim'
call plug#end()

