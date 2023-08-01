#!/usr/bin/env bash

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

