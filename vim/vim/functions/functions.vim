
"--------------------------------------------------------------------------------------------------------------Functions

" functionsDirectory
if isdirectory($HOME."/.config/vim/functions/functionsDirectory")
  for mappingsFile in split(glob($HOME."/.config/vim/functions/functionsDirectory/*.vim"), "\n")
    execute "source " mappingsFile
  endfor
endif

