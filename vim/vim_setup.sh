# install vim and gvim
# sudo apt-get install vim vim-gtk
# sudo pacman -S gvim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# copy vimrc to homefolder
cp vimrc ~/.vimrc

# install plugins using :PluginInstall
vim +PluginInstall +qall
