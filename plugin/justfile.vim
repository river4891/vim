vim9script
# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : justfile.vim
#   Last Modified : 2023-08-06 00:18
#   Describe      : 
#
# ====================================================

export def Init(): void
	KeyMap()
enddef

def KeyMap(): void
	augroup filetypedetect
	  au BufNewFile,BufRead justfile setf make
	augroup END
enddef
