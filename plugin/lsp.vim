" ====================================================
"   Copyright (C) 2023 river All rights reserved.
"
"   Author        : tower_town
"   Email         : tower_town@outlook.com
"   File Name     : lsp.vim
"   Last Modified : 2023-08-03 01:12
"   Describe      : 
"
" ====================================================

if has('linux')
let lspServers = [#{
	\	  name: 'clang',
	\	  filetype: ['c', 'cpp'],
	\	  path: '/usr/bin/clangd',
	\	  args: ['--background-index']
	\ }]

autocmd VimEnter * call LspAddServer(lspServers)

let lspOpts = #{autoHighlightDiags: v:true}
autocmd VimEnter * call LspOptionsSet(lspOpts)

endif

nnoremap <Space>d :LspDiagCurrent<CR>
nnoremap <Space>dl :LspDiagShow<CR>
