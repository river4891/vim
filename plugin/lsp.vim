vim9script
# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : lsp.vim
#   Last Modified : 2024-01-18 10:31
#   Describe      : 
#
# ====================================================


export def Init(): void
	RegisterServer()
	KeyMap()
enddef


def LspLoadFileType(ftlist: list<string>): bool
	var flag: bool = false
	for ftype in ftlist
		if &filetype == ftype
			flag = true
		endif
	endfor
	return flag
enddef

def RegisterServer(): void
	var ftlist: list<string> = ['c', 'h', 'cpp', 'vim']
	var flag: bool = LspLoadFileType(ftlist)
	if has('linux') && true
	g:lspServers = [{
		  "name": 'clangd',
		  "filetype": ['c', 'cpp'],
		  "path": '/usr/bin/clangd',
		  "args": ['--background-index'],
	 },
	 {
		  "name": 'vimlsp',
		  "filetype": ['vim'],
		  "path": '/usr/bin/vimlsp',
		  "args": ['--stdio'],
	 },
	 {
		 "name": 'jdtls',
		 "filetype": 'java',
		 "path": '/usr/bin/jdtls',
		 "args": [],
		 "initializationOptions": {
			 "settings": {
				 "java": {
					 "completion": {
						 "filteredTypes": ["com.sun.*", "java.awt.*", "jdk.*", "org.graalvm.*", "sun.*", "javax.awt.*", "javax.swing.*"],
					 },
				 },
			 },
		 },
	 }
	]
	
	autocmd VimEnter * call LspAddServer(g:lspServers)
	# autocmd VimEnter * call LspAddServer(g:lspServers['clanglsp'])

	g:lspOpts = {"autoHighlightDiags": true}
	autocmd VimEnter * call LspOptionsSet(g:lspOpts)

	endif
enddef

def KeyMap(): void
	nnoremap <silent><Space>d :LspDiagCurrent<CR>
	nnoremap <silent><Space>dl :LspDiagShow<CR>

	nnoremap <silent>gd :LspGotoDefinition<CR>
	nnoremap <silent>gi :LspGotoImpl<CR>
	nnoremap <silent>. :LspCodeAction<CR>
enddef

