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
source $HOME/.config/vim/plugins/colorschemes.vim                    " colorschemes file
call plug#end()
" plugins pluginsConfigs files
source $HOME/.config/vim/plugins/pluginsConfigs/airline.vim          " airline file 
source $HOME/.config/vim/plugins/pluginsConfigs/undotree.vim         " undotree file 
source $HOME/.config/vim/plugins/pluginsConfigs/gitgutter.vim        " gitgutter file 
" schemes files
source $HOME/.config/vim/schemes/schemes.vim                         " configs file
" configs files
source $HOME/.config/vim/configs/configs.vim                         " configs file
source $HOME/.config/vim/configs/cursor.vim                          " cursor file
" mappings files
source $HOME/.config/vim/mappings/mappings.vim                       " mappings file
" functions files
source $HOME/.config/vim/functions/functions.vim                     " functions file
source $HOME/.config/vim/functions/splits.vim                        " splits file

