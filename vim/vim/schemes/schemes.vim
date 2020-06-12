
"--------------------------------------------------------------------------------------------------------Schemes Configs

" default colorscheme
silent! colorscheme one

" for more colors
if (empty($TMUX))
  " enable true color in neovim
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  " set termguicolors
  if (has("termguicolors"))
    set termguicolors
  endif
endif

