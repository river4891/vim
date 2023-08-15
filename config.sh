#!/usr/bin/env bash
# ====================================================
#   Copyright (C) 2023 river All rights reserved.
#
#   Author        : tower_town
#   Email         : tower_town@outlook.com
#   File Name     : config.sh
#   Last Modified : 2023-08-15 16:17
#   Describe      : 
#
# ====================================================


vim_depd(){
apk add \
		vifm \
		just \
		clang \
		clang16-extra-tools
# clangd in clang16-extra-tools

# apk add python3 py3-pip
# # pip conf
# pip install --upgrade pip
# pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
# # options
# pip install clangd

# vimlsp
apk add nodejs-lts npm
npm config set registry https://registry.npmmirror.com
npm install -g vim-language-server
npm list -g

ln -s /usr/local/bin/vim-language-server /usr/bin/vimlsp
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
	wget \
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

echo $(which fish) | sudo tee -a /etc/shells
chsh -s $(which fish)
cat <<EOF
set ohmyfish "https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install"
which omf && fish -c "curl $ohmyfish | fish"
omf install ays

apk add lua5.1 luajit
git clone https://github.com/skywind3000/z.lua /usr/local/zlua
echo 'lua /usr/local/zlua/z.lua --init fish | source' >> ~/.config/fish/conf.d/z.fish
EOF
}

fish_proxy(){
tee -a ~/.config/fish/conf.d/proxy.fish <<'__EOF__'
function with_fastgit
	HTTPS_PROXY=http://127.0.0.1:38457 $argv
end
__EOF__
}

alter_command(){

apk add \
	exa \
	find-fd \
	ripgrep \
	bat \
	htop
}

