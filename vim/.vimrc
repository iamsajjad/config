" .vimrc
"
" copy vim/ directory to $HOME/.config/
"
if isdirectory($HOME."/.config/vim")
  " configs files
  source $HOME/.config/vim/configs/configs.vim                         " configs file
  " plugins files
  call plug#begin("~/.vim/plugged")
    source $HOME/.config/vim/plugins/plugins.vim                       " plugins file
    source $HOME/.config/vim/plugins/syntaxes.vim                      " syntaxes file
    source $HOME/.config/vim/plugins/languages.vim                     " languages file
    source $HOME/.config/vim/plugins/schemes.vim                       " schemes file
  call plug#end()
  " schemes files
  source $HOME/.config/vim/schemes/schemes.vim                         " schemes file
  " functions files
  source $HOME/.config/vim/functions/functions.vim                     " functions file
  " mappings files
  source $HOME/.config/vim/mappings/mappings.vim                       " mappings file
  " automatic files
  source $HOME/.config/vim/automatic/automatic.vim                     " automatic file
endif

