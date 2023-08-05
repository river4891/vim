vim9script
# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : vim-copyright.vim
#   Last Modified : 2023-08-06 00:15
#   Describe      : 
#
# ====================================================

export def Init(): void
	g:file_copyright_company = "river"
	g:file_copyright_rights = "All rights reserved."
	g:file_copyright_name = "tower_town"
	g:file_copyright_email = "tower_town@outlook.com"

	# auto update copyright when save file. Default: 1; 0:close auto.
	g:file_copyright_auto_update = 1

	g:file_copyright_auto_filetypes = [
			'sh', 'plx', 'pl', 'pm', 'py', 'python',
			'h', 'hpp', 'c', 'cpp', 'java',
			'ruby', 'rb', 'rake',
			'uml', 'plantuml',
			'go',
			'vim', 'vim9script',
	]

	g:file_copyright_comment_prefix_map  = {
		"python": "\#", "py": "\#",
		"cpp": "/*", "c": "/*", "h": "/*", "hpp": "/*",
		"go": "/*",
		"vim": "\"", "vim9script": "\#",
		"sh": "\#", "shell": "\#",
	}

	g:file_copyright_comment_mid_prefix_map = {
		"python": "\#", "py": "\#",
		"cpp": "\#", "c": "\#", "h": "\#", "hpp": "\#",
		"go": "\#",
		"vim": "\"", "vim9script": "\#",
		"sh": "\#", "shell": "\#",
	}

	g:file_copyright_comment_end_map = {
		"cpp": "*/", "c": "*/", "h": "*/", "hpp": "*/",
		"go": "*/",
	}

enddef
