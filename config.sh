#!/usr/bin/env bash
# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : config.sh
#   Last Modified : 2023-08-05 08:34
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

alpine_init(){
# setting mirror apk rep
echo "setting mirror apk rep"
sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories

# basic apk
echo "install basic apk"
apk add \
	build-base \
	vim \
	git \
	curl \
	less

# install docs reference: wiki.alpinelinux.com/wiki/Alpine_Linux:FAQ
echo "install docs reference: wiki.alpinelinux.com/wiki/Alpine_Linux:FAQ"
apk add mandoc man-pages docs

# setting timezone reference: wiki.alpinelinux.com/wiki/Setting_the_timezone
echo "setting timezone."
apk add tzdata
ls /usr/share/zoneinfo

# setting timezone to Asia/Shanghai
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

echo "Asia/Shanghai" > /etc/timezone
date

apk del tzdata
echo "setting timezone finish."
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

