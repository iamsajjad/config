# setup.sh

# copy configs files to home
cp .vimrc ~/
cp -R vim/ ~/.config/
cp -R dotvim/. ~/.vim/

# install vim plug plugins manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install plugins
vim +PlugInstall +qall

echo "VIM configs done."

