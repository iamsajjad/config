#!/usr/bin/env bash

# ... setup.sh

# install requirements
python -m pip install --upgrade setuptools pip
python -m pip install neovim

# copy vim / neovim directories to home
cp -R dotconfig/. ~/.config/
cp -R dotvim/. ~/.vim/
cp .vimrc ~/

# install vim plug plugins manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install plugins
vim +PlugInstall +PlugUpdate +PlugUpgrade +qall

echo "VIM configurations done."

