
" ... .vimrc

" configure vim / neovim with .config/vim directory
if isdirectory($HOME."/.config/vim")
  " configs files
  source $HOME/.config/vim/configs/configs.vim                         " configs file
  " plugins files
  call plug#begin("~/.vim/plugged")

    " source plugins files
    " bundles.vim, formats.vim, languages.vim, schemes.vim, syntaxes.vim
    if isdirectory($HOME."/.config/vim/plugins")
      for pluginsFile in split(glob($HOME."/.config/vim/plugins/*.vim"), "\n")
        execute "source " pluginsFile
      endfor
    endif

    " for test or temporary adding plugin do
    " Plug 'organization/repository'

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

