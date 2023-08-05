vim9script
# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : lsp.vim
#   Last Modified : 2023-08-06 02:12
#   Describe      : 
#
# ====================================================


export def Init(): void
	RegisterServer()
	KeyMap()
enddef


def LspLoadFileType(ftlist: list<string>): bool
	var flag: bool = false
	#for ftype in ['c', 'h', 'vim']
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
	if has('linux') && flag
	var clanglsp = [{
		  "name": 'clangd',
		  "filetype": ['c', 'cpp'],
		  "path": '/usr/bin/clangd',
		  "arg": ['--background-index']
	 }]

	var vimlsp = [{
		  "name": 'vimlsp',
		  "filetype": ['vim'],
		  "path": '/usr/bin/vimlsp',
		  "arg": ['--stdio']
	 }]
	
	g:lspServers = {
		"vimlsp": vimlsp,
		"clanglsp": clanglsp,
	}

	autocmd VimEnter * call LspAddServer(g:lspServers['vimlsp'])
	autocmd VimEnter * call LspAddServer(g:lspServers['clanglsp'])

	g:lspOpts = {"autoHighlightDiags": true}
	autocmd VimEnter * call LspOptionsSet(g:lspOpts)

	endif
enddef

def KeyMap(): void
	nnoremap <silent><Space>d :LspDiagCurrent<CR>
	nnoremap <silent><Space>dl :LspDiagShow<CR>

	nnoremap <silent>gf :LspGotoDefinition<CR>
	nnoremap <silent>gi :LspGotoImpl<CR>
enddef

