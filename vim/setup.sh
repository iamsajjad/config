# setup.sh

# copy configs files to home
cp .vimrc ~/
cp -R vim/ ~/.config/
cp -R dotvim/. ~/.vim/

# copy configs files for neovim
cp -R nvim/ ~/.config/

# install vim plug plugins manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install plugins
vim +PlugInstall +PlugUpdate +PlugUpgrade +qall

echo "VIM configs done."

