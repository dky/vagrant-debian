#!/bin/sh

mkdir ~/bin ~/tmp
wget -O ~/tmp/nvim.tar.gz  https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.tar.gz
tar -xzvf ~/tmp/nvim.tar.gz -C ~/tmp/
ln -s ~/tmp/nvim-linux64/bin/nvim ~/bin/
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
