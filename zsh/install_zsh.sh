# install zsh
# sudo apt-get install zsh git

# get oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# change default shell to zsh
sudo chsh -s $(which zsh) $(whoami)

# backup original copy of zshrc if any
if [ -e ~/.zshrc ]
then
    cp ~/.zshrc ~/.zshrc.orig
fi

cp zshrc ~/.zshrc
