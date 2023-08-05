vim9script
# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : basic.vim
#   Last Modified : 2023-08-05 23:53
#   Describe      : this basic vim config
#
# ====================================================

export def Init(): void
	set nocompatible

	$LANG = 'en'  # set message language  
	set langmenu=en   # set menu's language of gvim. no spaces beside '='  


	set nu
	set nohlsearch
	set backspace=eol,start,indent
	set autoindent
	set cindent
	set winaltkeys=no
	set nowrap
	set ttimeout
	set ttimeoutlen=50
	set cmdheight=1
	set ruler
	set nopaste
	set display=lastline
	set noswapfile

	set shiftwidth=4
	set softtabstop=4
	set noexpandtab
	set tabstop=4

	set termguicolors

	if exists("did_load_filetypes")
		finish
	endif

enddef
