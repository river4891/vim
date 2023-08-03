" ====================================================
"   Copyright (C) 2023 river All rights reserved.
"
"   Author        : tower_town
"   Email         : tower_town@outlook.com
"   File Name     : init.vim
"   Last Modified : 2023-08-03 21:21
"   Describe      : vim config entry main()
"
" ====================================================


if get(s:, 'loaded', 0) != 0
		finish
else
		let s:loaded = 1
endif


let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

if has('nvim') == 1
		exec 'set rtp+=' .. fnameescape(s:home)
else
		exec 'set rtp+=~/.vim'
endif

command! -nargs=1 IncScript exec 'so ' .. fnameescape(s:home .. "/<args>")

IncScript init/viminit.vim
IncScript init/check_plug.vim
IncScript init/plug.vim
IncScript init/status.vim
IncScript init/ignore.vim
IncScript plugin/vifm.vim
IncScript plugin/undotree.vim
IncScript plugin/vim-copyright.vim
IncScript plugin/lsp.vim
IncScript plugin/MRU.vim
