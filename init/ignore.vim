vim9script
# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : ignore.vim
#   Last Modified : 2023-08-05 23:57
#   Describe      : this script rewrite vim9script 
#   Origin Author : skywind3000
#   Reffence : https://github.com/skywind3000/vim/blob/master/init/ignore.vim 
#
# ====================================================


export def Init(): void
	&suffixes = '.bak,~,.o,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class'
	&suffixes ..= '.exe,.class,.jpg,.png,.webp'

	# stuff to ignore when tab completing'
	&wildignore = '*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib,*.bak'
	&wildignore ..= '*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex'
	&wildignore ..= '*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz'   #  MacOSX/Linux'
	&wildignore ..= '*DS_Store*,*.ipch'
	&wildignore ..= '*.gem'
	&wildignore ..= '*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso,*.webp'
	&wildignore ..= '*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**'
	&wildignore ..= '*/.nx/**,*.app,*.git,.git,*/__pycache__/**,__pycache__'
	&wildignore ..= '*.wav,*.mp3,*.ogg,*.pcm'
	&wildignore ..= '*.mht,*.suo,*.sdf,*.jnlp'
	&wildignore ..= '*.chm,*.epub,*.pdf,*.mobi,*.ttf'
	&wildignore ..= '*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc'
	&wildignore ..= '*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps'
	&wildignore ..= '*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu'
	&wildignore ..= '*.gba,*.sfc,*.078,*.nds,*.smd,*.smc'
	&wildignore ..= '*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android'
enddef
