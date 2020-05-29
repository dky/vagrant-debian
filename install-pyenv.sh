#!/bin/bash

sudo apt-get -y install build-essential libsqlite3-dev sqlite3 bzip2 libbz2-dev zlib1g-dev libssl-dev openssl libgdbm-dev libgdbm-compat-dev liblzma-dev libreadline-dev libncursesw5-dev libffi-dev uuid-dev

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

pyenv install 3.7.5
pyenv global 3.7.5

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

pip install --upgrade pip
pip install --user pynvim
