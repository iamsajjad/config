" .vimrc
"
" create .config directory if it not exists
if !isdirectory($HOME."/.config")
    call mkdir($HOME."/.config", "", 0755)
endif
"
" copy vim/ directory to $HOME/.config/
"
" plugins files
call plug#begin('~/.vim/plugged')
  source $HOME/.config/vim/plugins/plugins.vim                         " plugins file
  source $HOME/.config/vim/plugins/syntaxes.vim                        " syntaxes file
  source $HOME/.config/vim/plugins/languages.vim                       " languages file
  source $HOME/.config/vim/plugins/schemes.vim                         " schemes file
call plug#end()
" schemes files
source $HOME/.config/vim/schemes/schemes.vim                         " schemes file
source $HOME/.config/vim/schemes/schemesMappings.vim                 " schemes mappings file
" configs files
source $HOME/.config/vim/configs/configs.vim                         " configs file
source $HOME/.config/vim/configs/leader.vim                          " leader file
source $HOME/.config/vim/configs/cursor.vim                          " cursor file
source $HOME/.config/vim/configs/highLight.vim                          " cursor file
" plugins pluginsConfigs files
source $HOME/.config/vim/configs/pluginsConfigs.vim                  " plugins configs file
" mappings files
source $HOME/.config/vim/mappings/mappings.vim                       " mappings file
source $HOME/.config/vim/mappings/iModeMappings.vim                  " insert mode mappings file
source $HOME/.config/vim/mappings/nModeMappings.vim                  " normal mode mappings file
source $HOME/.config/vim/mappings/vModeMappings.vim                  " visual mode mappings file
source $HOME/.config/vim/mappings/cModeMappings.vim                  " command-line mode mappings file
" functions files
source $HOME/.config/vim/functions/functions.vim                     " functions file
source $HOME/.config/vim/functions/refresh.vim                       " refresh file
source $HOME/.config/vim/functions/splits.vim                        " splits file
" automatic files
source $HOME/.config/vim/automatic/automatic.vim                     " automatic file

