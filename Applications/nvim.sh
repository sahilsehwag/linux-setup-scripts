#! /bin/bash


#UBUNTU
if [[ $@ =~ ubuntu3s ]]; then
	sudo apt-get install python3-dev
	sudo apt-get install software-properties-common
	sudo add-apt-repository ppa:neovim-ppa/stable
	sudo apt-get update
	sudo apt-get install neovim
	sudo pip3 install neovim
fi

if [[ $@ =~ ubuntu2s ]]; then
	sudo apt-get install python-dev
	sudo apt-get install software-properties-common
	sudo add-apt-repository ppa:neovim-ppa/stable
	sudo apt-get update
	sudo apt-get install neovim
	sudo pip install neovim
fi

if [[ $@ =~ ubuntu3us ]]; then
	sudo apt-get install python3-dev
	sudo apt-get install software-properties-common
	sudo add-apt-repository ppa:neovim-ppa/unstable
	sudo apt-get update
	sudo apt-get install neovim
	sudo pip3 install neovim
fi

if [[ $@ =~ ubuntu2us ]]; then
	sudo apt-get install python-dev
	sudo apt-get install software-properties-common
	sudo add-apt-repository ppa:neovim-ppa/ustable
	sudo apt-get update
	sudo apt-get install neovim
	sudo pip install neovim
fi



#INSTALLING VIM-PLUG
if [[ $@ =~ plug ]]; then
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi


#.vimrc -> init.vim
if [[ $@ =~ link ]]; then
	ln -s ~/.vim ~/.config/nvim
	ln -s ~/.vimrc ~/.config/nvim/init.vim
fi
