#!/usr/bin/env bash
# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : config.sh
#   Last Modified : 2023-08-04 10:22
#   Describe      : 
#
# ====================================================


vim_depd(){
apk add \
		vifm \
		just \
		clang \
		clang16-extra-tools
# clangd
apk add python3 py3-pip
# pip conf
pip install --upgrade pip
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
pip install clangd

# vimlsp
apk add nodejs-lts npm
npm config set registry https://registry.npmmirror.com
npm install -g vim-language-server
npm prefix -g vim-language-server
}

alpine_add(){
apk add \
	build-base \
	vim \
	git \
	curl
}

fish_config(){
apk add \
	fish \
	shadow
# chsh -- /usr/bin/fish
fish
ohmyfish="https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install"
which omf && curl "$ohmyfish" | fish
omf install ays

apk add zoxide
echo 'zoxide init fish | source' >> ~/.config/fish/config.d/z.fish
}

