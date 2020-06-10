
"----------------------------------------------------------------------------------------------------------------Configs

" configs directory
if isdirectory($HOME."/.config/vim/configs/configsDirectory")
  for configsFile in split(glob($HOME."/.config/vim/configs/configsDirectory/*.vim"), '\n')
    execute 'source ' configsFile
  endfor
endif

" load pluginsConfigs.vim file
source $HOME/.config/vim/configs/pluginsConfigs.vim

