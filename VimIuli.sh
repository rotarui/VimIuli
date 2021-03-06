#! /bin/sh

sudo apt-get install build-essential cmake python-dev python3-dev exuberant-ctags clang -y
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir ~/.vim/colors
cp ./wombat256.vim ~/.vim/colors/
cp .vimrc ~
cp .vimymc ~
cd
vim -c PlugInstall -c qall
cd ~/.vim/plugged/YouCompleteMe
./install.py --clang-completer
echo "Enjoy"
