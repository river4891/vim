" ====================================================
"   Copyright (C) 2023 river All rights reserved.
"
"   Author        : tower_town
"   Email         : tower_town@outlook.com
"   File Name     : lsp.vim
"   Last Modified : 2023-08-04 17:12
"   Describe      : 
"
" ====================================================

let flag = 0
for ftype in ['c', 'h', 'vim']
	if &filetype == ftype
		let flag = 1
	endif
endfor

if has('linux') && flag
let clanglsp = [#{
	\	  name: 'clang',
	\	  filetype: ['c', 'cpp'],
	\	  path: '/usr/bin/clangd',
	\	  args: ['--background-index']
	\ }]

let vimlsp= [#{
	\	  name: 'vimlsp',
	\	  filetype: ['vim'],
	\	  path: '/usr/bin/vimlsp',
	\	  args: ['--stdio']
	\ }]

autocmd VimEnter * call LspAddServer(vimlsp)
autocmd VimEnter * call LspAddServer(clanglsp)

let lspOpts = #{autoHighlightDiags: v:true}
autocmd VimEnter * call LspOptionsSet(lspOpts)

endif

nnoremap <silent><Space>d :LspDiagCurrent<CR>
nnoremap <silent><Space>dl :LspDiagShow<CR>

nnoremap <silent>gf :LspGotoDefinition<CR>
nnoremap <silent>gi :LspGotoImpl<CR>

