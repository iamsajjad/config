#!/usr/bin/env bash

# ... configure.sh

# install requirements
python -m pip install --user --upgrade setuptools pip
python -m pip install --user neovim

# copy vim / neovim directories to home
cp -R dotconfig/. ~/.config/
cp -R dotvim/. ~/.vim/
cp .vimrc ~/

# install vim plug plugins manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install plugins
vim +PlugInstall +PlugUpdate +PlugUpgrade +qall

echo "VIM configurations done."

