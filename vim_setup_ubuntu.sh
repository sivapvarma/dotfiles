# install vim and gvim
sudo apt-get install vim vim-gtk

# remove if there is an existing installation
if [ -e ~/.vim/bundle ]
then
    rm -rf ~/.vim/bundle
fi

mkdir -p ~/.vim/bundle

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/Vundle.vim

# copy vimrc to homefolder
cp vimrc ~/.vimrc

# install plugins using :PluginInstall
vim +PluginInstall +qall
