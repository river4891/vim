vim9script
# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : index.vim
#   Last Modified : 2023-08-05 23:58
#   Describe      : vim init entry main()
#
# ====================================================

import "./check_plug.vim"
import "./status.vim"
import "./basic.vim"
import "./ignore.vim"


export def Init(): void
	basic.Init()
	check_plug.InitPlugLoad()
	status.SetStatusLine()
	ignore.Init()
enddef
