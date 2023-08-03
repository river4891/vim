vim9script

# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : status.vim
#   Last Modified : 2023-08-03 16:44
#   Describe      : this script rewrite vim9script 
#   Origin Author : skywind3000
#   Reffence : https://github.com/skywind3000/vim/blob/master/init/status.vim 
#
# ====================================================



&laststatus = 2

# ----------------------------------------------------------------------
# simple status line
# ----------------------------------------------------------------------
g:status_padding_left = ""
g:status_padding_right = ""

&statusline =   ''                             # clear status line
&statusline ..= "%\{''.g:status_padding_left\}"    #  left padding
&statusline ..= ' %F'                           #  filename
&statusline ..= ' [%1*%M%*%n%R%H]'              #  buffer number and status
&statusline ..= '%{g:status_padding_right}'   #  left padding
# &statusline ..= \ %{''.toupper(mode())}      #  " INSERT/NORMAL/VISUAL
&statusline ..= '%='                             #  right align remainder
&statusline ..= ' %y'                           #  file type
&statusline ..= ' %0(%{&fileformat} [%{(&fenc==""?&enc:&fenc)..(&bomb?",BOM":"")}] %v:%l/%L%)'

