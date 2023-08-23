" ====================================================
"   Copyright (C) 2023 river All rights reserved.
"
"   Author        : tower_town
"   Email         : tower_town@outlook.com
"   File Name     : plug.vim
"   Last Modified : 2023-08-23 10:41
"   Describe      : plugin list
"
" ====================================================


call plug#begin()

" Plug 'tpope/vim-sensible'
" Plug 'justmao945/vim-clang',{'for':'c'}
Plug 'yegappan/lsp', {'for': ['c', 'h', 'vim']}
Plug 'vifm/vifm.vim', {'on': 'TabVifm'}
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}
Plug 'pbrisbin/vim-mkdir'
Plug 'asins/vim-dict'
Plug 'NoahTheDuke/vim-just', {'for':['justfile','Makefile']}
Plug 'skywind3000/asynctasks.vim', {'on': 'AsyncTask'}
Plug 'skywind3000/asyncrun.vim', {'on': 'AsyncRun'}
Plug 'river4891/vim-copyright'
" Plug 'yegappan/mru'
Plug 'junegunn/vim-peekaboo'

if !has('nvim') && has('vim9script')
	Plug 'Eliot00/auto-pairs'
endif

if !has('linux') || !has('unix')
	Plug 'kaarmu/typst.vim'
endif

call plug#end()
