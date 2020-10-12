
" ... .vimrc

" configure vim / neovim with .config/vim directory
if isdirectory($HOME."/.config/vim")
  " configs files
  source $HOME/.config/vim/configs/configs.vim                         " configs file
  " plugins files
  call plug#begin("~/.vim/plugged")
    source $HOME/.config/vim/plugins/bundles.vim                       " bundles plugins file
    source $HOME/.config/vim/plugins/languages.vim                     " languages plugins file
    source $HOME/.config/vim/plugins/schemes.vim                       " schemes plugins  file
    source $HOME/.config/vim/plugins/syntaxes.vim                      " syntaxes plugins file
  call plug#end()
  " abbreviations files
  source $HOME/.config/vim/abbreviations/abbreviations.vim             " abbreviations file
  " automatic files
  source $HOME/.config/vim/automatics/automatics.vim                   " automatics file
  " functions files
  source $HOME/.config/vim/functions/functions.vim                     " functions file
  " mappings files
  source $HOME/.config/vim/mappings/mappings.vim                       " mappings file
  " schemes files
  source $HOME/.config/vim/schemes/schemes.vim                         " schemes file
  " snippets files
  source $HOME/.config/vim/snippets/snippets.vim                       " snippets file
  " configure file handle plugins configs
  source $HOME/.config/vim/configure.vim
endif

