vim9script
# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : index.vim
#   Last Modified : 2023-08-06 00:53
#   Describe      : 
#
# ====================================================

import "./vim-copyright.vim" as copyright
import "./justfile.vim"
import "./lsp.vim"
import "./undotree.vim" as UndoTree
import "./MRU.vim"
import "./vifm.vim"

export def Init(): void
	copyright.Init()
	justfile.Init()
	lsp.Init()
	UndoTree.Init()
	MRU.Init()
	vifm.Init()
enddef
