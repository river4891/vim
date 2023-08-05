vim9script

# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : status.vim
#   Last Modified : 2023-08-05 22:56
#   Describe      : this script rewrite vim9script 
#   Origin Author : skywind3000
#   Reffence : https://github.com/skywind3000/vim/blob/master/init/status.vim 
#
# ====================================================


export def SetStatusLine(): void
	set laststatus=2

	# ----------------------------------------------------------------------
	# simple status line
	# ----------------------------------------------------------------------
	g:status_padding_left = ""
	g:status_padding_right = ""

	def ConcatStatusLine(): string
		var stl: string = ''                             # clear status line
		stl ..= "%\{''.g:status_padding_left\}"    #  left padding
		stl ..= ' %F'                           #  filename
		stl ..= ' [%1*%M%*%n%R%H]'              #  buffer number and status
		stl ..= '%{g:status_padding_right}'   #  left padding
		# &stl ..= \ %{''.toupper(mode())}      #  " INSERT/NORMAL/VISUAL
		stl ..= '%='                             #  right align remainder
		stl ..= ' %y'                           #  file type
		stl ..= ' %0(%{&fileformat} [%{(&fenc==""?&enc:&fenc)..(&bomb?",BOM":"")}] %v:%l/%L%)'
		return stl
	enddef
	&statusline = ConcatStatusLine()
enddef

