" ====================================================
"   Copyright (C) 2023 river All rights reserved.
"
"   Author        : tower_town
"   Email         : tower_town@outlook.com
"   File Name     : check_plug.vim
"   Last Modified : 2023-08-03 21:07
"   Describe      : this script be modified from vim-plug wiki
"   Reference     : https://github.com/junegunn/vim-plug/wiki/tips#Automatic+installation
"
" ====================================================


let s:data_dir = has('nvim') ? stdpath('data') .. '/site' : '~/.vim'
let s:data_dir = has('windows') && !has('nvim') ? '$HOME/vimfiles' : '~/.vim'
if empty(glob(s:data_dir .. '/autoload/plug.vim'))
  silent execute '!curl -fLo ' .. s:data_dir .. '/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif
