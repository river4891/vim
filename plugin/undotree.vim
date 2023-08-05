vim9script
# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : undotree.vim
#   Last Modified : 2023-08-06 00:42
#   Describe      : 
#
# ====================================================


export def Init(): void
	SetUndoFile()
	KeyMap()
enddef

def SetUndoFile(): void
	if has("persistent_undo")
	   var target_path = expand('~/.undodir')

		# create the directory and any parent directories
		# if the location does not exist.
		if !isdirectory(target_path)
			call mkdir(target_path, "p", 0700)
		endif

		&undodir = target_path
		set undofile
	endif
enddef


def KeyMap(): void
	nnoremap <space>u :UndotreeToggle<CR>
enddef

