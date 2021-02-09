
" ... configure.vim

if isdirectory($HOME."/.config/vim/plugins")
  " source plugins configs from pluginsConfigs directory
  if isdirectory($HOME."/.config/vim/plugins/pluginsConfigs")
    for configsDirectory in split(glob($HOME."/.config/vim/plugins/pluginsConfigs/*"), "\n")
      if isdirectory(configsDirectory)
          for configsFile in split(glob(configsDirectory."/*.vim"), "\n")
            execute "source " configsFile
          endfor
      endif
    endfor
  endif
endif

