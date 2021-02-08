
" ... configure.vim

" pluginsConfigs directory
if isdirectory($HOME."/.config/vim/plugins/pluginsConfigs")
  " bundles configs
  if isdirectory($HOME."/.config/vim/plugins/pluginsConfigs/bundles")
    for configsFile in split(glob($HOME."/.config/vim/plugins/pluginsConfigs/bundles/*.vim"), "\n")
      execute "source " configsFile
    endfor
  endif

  " formats plugins configs
  if isdirectory($HOME."/.config/vim/plugins/pluginsConfigs/formats")
    for configsFile in split(glob($HOME."/.config/vim/plugins/pluginsConfigs/formats/*.vim"), "\n")
      execute "source " configsFile
    endfor
  endif

  " languages plugins configs
  if isdirectory($HOME."/.config/vim/plugins/pluginsConfigs/languages")
    for configsFile in split(glob($HOME."/.config/vim/plugins/pluginsConfigs/languages/*.vim"), "\n")
      execute "source " configsFile
    endfor
  endif

  " schemes plugins configs
  if isdirectory($HOME."/.config/vim/plugins/pluginsConfigs/schemes")
    for configsFile in split(glob($HOME."/.config/vim/plugins/pluginsConfigs/schemes/*.vim"), "\n")
      execute "source " configsFile
    endfor
  endif

  " syntaxes plugins configs
  if isdirectory($HOME."/.config/vim/plugins/pluginsConfigs/syntaxes")
    for configsFile in split(glob($HOME."/.config/vim/plugins/pluginsConfigs/syntaxes/*.vim"), "\n")
      execute "source " configsFile
    endfor
  endif
endif

" schemesConfigs directory
if isdirectory($HOME."/.config/vim/schemes/schemesConfigs")
  for configsFile in split(glob($HOME."/.config/vim/schemes/schemesConfigs/*.vim"), "\n")
    execute "source " configsFile
  endfor
endif

