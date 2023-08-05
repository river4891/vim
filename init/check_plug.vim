vim9script
# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : check_plug.vim
#   Last Modified : 2023-08-05 23:27
#   Describe      : this script be modified from vim-plug wiki
#   Reference     : https://github.com/junegunn/vim-plug/wiki/tips#Automatic+installation
#
# ====================================================

export def InitPlugLoad(): void
	InstallVimPlug()
	AutoInstallPlug()
enddef

def InstallVimPlug(): void
	var vim_plug_url = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	var data_dir = has('nvim') ? stdpath('data') .. '/site' : has('windows') ? '$HOME/vimfiles' : '~/.vim'
	var install_targe = data_dir .. '/autoload/plug.vim'

	if empty(glob(install_targe))
	  silent execute '!curl -fLo ' .. data_dir .. '  --create-dirs  ' .. vim_plug_url
	  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif
enddef

# Run PlugInstall if there are missing plugins
def AutoInstallPlug(): void
	autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	  \| PlugInstall --sync | source $MYVIMRC
	\| endif
enddef

# autocmd_add({replace: true,
# 		group:   'vim_plug_group',
# 		event:   'VimEnter',
# 		pattern: '*',
# 		cmd:     'call DemoBufEnter()'
# })
