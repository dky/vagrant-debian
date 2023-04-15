#!/bin/bash

NVIM_VERSION=v0.9.0


if [[ $(uname -m) == "aarch64" ]]
then 
	wget -O ~/bin/nvim https://github.com/matsuu/neovim-aarch64-appimage/releases/download/v0.9.0/nvim-v0.9.0.appimage
	chmod u+x ~/bin/nvim

else

mkdir ~/bin ~/tmp
wget -O ~/tmp/nvim.tar.gz  https://github.com/neovim/neovim/releases/download/$NVIM_VERSION/nvim-linux64.tar.gz

tar -xzvf ~/tmp/nvim.tar.gz -C ~/tmp/ && ln -s ~/tmp/nvim-linux64/bin/nvim ~/bin/

# Install vim-plug for nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

rm ~/tmp/nvim.tar.gz

fi
