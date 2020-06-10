
"--------------------------------------------------------------------------------------------------------Schemes Configs

" default colorscheme
colorscheme one

" schemesConfigs
if isdirectory($HOME."/.config/vim/schemes/schemesConfigs")
  for configsFile in split(glob('$HOME/.config/vim/schemes/schemesConfigs/*.vim'), '\n')
    execute 'source ' configsFile
  endfor
endif

