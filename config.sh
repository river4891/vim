#!/usr/bin/env bash

vim_depd(){
apk add \
		vifm \
		just \
		clang \
		clang16-extra-tools
# clangd
apk add python3 py3-pip
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
	fish
ohmyfish="https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install"
curl "$ohmyfish" | fish
omf install ays
}

