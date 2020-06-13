
" ... goyoConfigs.vim

" enter goyo configs
function! s:goyoEnter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  " ...
endfunction

" leave goyo configs
function! s:goyoLeave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyoEnter()
autocmd! User GoyoLeave nested call <SID>goyoLeave()

" mappings
nnoremap <Leader><Enter> :Goyo<CR>

