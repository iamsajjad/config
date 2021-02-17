
" ... schemes.vim

" schemesConfigs directory
if isdirectory($HOME."/.config/vim/schemes/schemesConfigs")
  for configsFile in split(glob($HOME."/.config/vim/schemes/schemesConfigs/*.vim"), "\n")
    execute "source " configsFile
  endfor
endif

