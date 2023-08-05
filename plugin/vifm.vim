vim9script
# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : vifm.vim
#   Last Modified : 2023-08-06 00:50
#   Describe      : 
#
# ====================================================



export def Init(): void
	KeyMap()
enddef

def KeyMap(): void
	nnoremap <space>f :TabVifm<CR>
enddef
