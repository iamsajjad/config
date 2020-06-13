
"--------------------------------------------------------------------------------------------------------setsConfigs.vim

set nocompatible                  " must be first, changes behaviour of other settings
set t_Co=256                      " 256 colors
set fileformat=unix               " sane text files
set encoding=utf-8                " file encoding
set updatetime=50                 " reduce the time to show git changes and write changes to file
set textwidth=120                 " break lines when line length increases
set colorcolumn=121               " show limit column line
set fo-=t                         " don't automatically wrap text when typing
set nowrap                        " don't automatically wrap on load
set tabstop=4                     " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4                  " number of spaces to use for auto indent
set expandtab                     " enter spaces when tab is pressed
set autochdir                     " change directory to opened file directory
set autoindent                    " copy indent from current line when starting a new line
set selection=exclusive           " allow cursor to be positioned one char past end of line
set hidden                        " allow backgrounding buffers without writing them
set scrolloff=3                   " Keep more context when scrolling off the end of a buffer
set whichwrap+=<,>,[,]            " allow cursor keys to go right off end of one line, onto start of next
set backspace=indent,eol,start    " allow backspacing over everything in insert mode
set number                        " Show current line number
set relativenumber                " Show relative line numbers
set nojoinspaces                  " when joining lines, don't insert two spaces after punctuation
set ignorecase                    " Make searches case-sensitive only if they contain upper-case characters
set smartcase
set incsearch                     " show search matches as the search pattern is typed
set wrapscan                      " search-next wraps back to start of file
set hlsearch
set splitbelow splitright         " new spilt [vs right] or [hs below]
set nospell                       " do not allow spell checking
set spelllang=en_us               " files that allow spell check set language to english
set wildmenu                      " make tab completion for files/buffers act like bash
set ruler                         " highlight last search matches
set cursorline                    " highlight cursor line
set showcmd                       " display number of selected chars, lines, or size of blocks.
set showmatch                     " show matching brackets, etc, for 1/10th of a second
set matchtime=1
set clipboard+=unnamed            " enable automatic yanking to and pasting from the selection
set background=dark               " set dark background as default
filetype plugin on                " enables filetype specific plugins
filetype on                       " enables filetype detection
syntax on                         " syntax highlighting

