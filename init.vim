" ====================================================
"   Copyright (C) 2023 river All rights reserved.
"
"   Author        : tower_town
"   Email         : tower_town@outlook.com
"   File Name     : init.vim
"   Last Modified : 2023-08-06 10:13
"   Describe      : vim config entry main()
"
" ====================================================


import autoload "./init/index.vim" as Init
import autoload "./plugin/index.vim" as Plug

call Init.Init()
call Plug.Init()

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

IncScript init/plug.vim
