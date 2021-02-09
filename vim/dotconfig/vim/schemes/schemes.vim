
" ... schemes.vim

" default colorscheme
silent! colorscheme blackhole

" comment highlight
highlight Comment cterm=italic gui=italic

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

" schemesConfigs directory
if isdirectory($HOME."/.config/vim/schemes/schemesConfigs")
  for configsFile in split(glob($HOME."/.config/vim/schemes/schemesConfigs/*.vim"), "\n")
    execute "source " configsFile
  endfor
endif

