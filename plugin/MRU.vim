vim9script
# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : MRU.vim
#   Last Modified : 2023-08-05 01:19
#   Describe      : 
#
# ====================================================


export def Init(): void
	KeyMap()
enddef

def KeyMap(): void
	# nnoremap <space>m :MRUToggle<CR>
	nnoremap <space>m :browse oldfiles<CR>
enddef
