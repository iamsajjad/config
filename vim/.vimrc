" .vimrc
"
" create .config directory if it not exists                                                                                                                                                                                               
if !isdirectory($HOME."/.config")
    call mkdir($HOME."/.config", "", 0755)
endif
"
" copy vim/ directory to $HOME/.config/
" 
" plugins file
source $HOME/.config/vim/plugins/plugins.vim
" configs file
source $HOME/.config/vim/configs/configs.vim
" colors file
source $HOME/.config/vim/configs/colors.vim
" splits file
source $HOME/.config/vim/configs/splits.vim
" cursor file
source $HOME/.config/vim/configs/cursor.vim
" undo file 
source $HOME/.config/vim/configs/undo.vim
" mappings file
source $HOME/.config/vim/mappings/mappings.vim
" functions file
source $HOME/.config/vim/functions/functions.vim

