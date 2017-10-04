#! /bin/bash
if [[ "$*" =~ help ]]; then
	echo debian build8 - VIM8.0 WITH PYTHON SUPPORT ON DEBIAN BASED MACHINES
	echo plug - INSTALLS VIM-PLUG
fi



#DEBIAN
if [[ "$*" =~ debian ]]; then
	#BUILDING FROM SOURCE
	if [[ "$*" =~ build8 ]]; then
		#INSTALLING DEPENDENCIES
		sudo apt-get -y install git
		sudo apt-get -y install libncurses5-dev
		sudo apt-get -y install libgnome2-dev
		sudo apt-get -y install libgnomeui-dev
		sudo apt-get -y install libgtk2.0-dev
		sudo apt-get -y install libatk1.0-dev
		sudo apt-get -y install libbonoboui2-dev
		sudo apt-get -y install libcairo2-dev
		sudo apt-get -y install libxpm-dev
		sudo apt-get -y install libx11-dev
		sudo apt-get -y install libxt-dev
		#sudo apt-get -y install python-dev
		sudo apt-get -y install python3-dev
		sudo apt-get -y install lua5.1
		sudo apt-get -y install lua5.1-dev
		sudo apt-get -y install liblua5.1-dev
		sudo apt-get -y install libperl-dev
		sudo apt-get -y install ruby-dev


		#REMOVE EXISTING VIM
		sudo apt-get -y remove vim
		sudo apt-get -y remove vim-tiny vim-common vim-gui-common vim-nox

		#FETCHING SOURCE CODE
		cd ~ || exit
		git clone https://github.com/vim/vim.git
		cd vim || exit
		
		./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            #--enable-pythoninterp=yes \
            #--with-python-config-dir=/usr/lib/python2.7/config \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local

		make VIMRUNTIMEDIR=/usr/local/share/vim/vim80

		#BUILDING AND INSTALLING
		sudo apt-get -y install checkinstall
		cd ~/vim || exit
		sudo checkinstall
	fi
fi



#RPM BASED
if [[ "$*" =~ rpm ]]; then
	#FEDORA 20
	if [[ "$*" =~ fedora20 ]]; then
		sudo yum install -y ruby ruby-devel lua lua-devel luajit \
			luajit-devel ctags git python python-devel \
			python3 python3-devel tcl-devel \
			perl perl-devel perl-ExtUtils-ParseXS \
			perl-ExtUtils-XSpp perl-ExtUtils-CBuilder \
			perl-ExtUtils-Embed
		sudo ln -s /usr/bin/xsubpp /usr/share/perl5/ExtUtils/xsubpp
	fi
fi



#INSTALLING VIM-PLUG
if [[ "$*" =~ plug ]] ; then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
