#!/bin/bash

sudo apt-get -y install build-essential libsqlite3-dev sqlite3 bzip2 libbz2-dev zlib1g-dev libssl-dev openssl libgdbm-dev libgdbm-compat-dev liblzma-dev libreadline-dev libncursesw5-dev libffi-dev uuid-dev

git clone https://github.com/pyenv/pyenv.git ~/.pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

pyenv install 3.9.5
pyenv global 3.9.5

/home/vagrant/.pyenv/shims/pip install --upgrade pip
/home/vagrant/.pyenv/shims/pip install --user pynvim
