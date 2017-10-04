#! /bin/bash
if [[ "$*" == help ]]; then
	echo install - BUILDS AND INSTALLS THE LATEST VERSION FROM GIT REPO
	echo uninstall - UNINSTALLS THE vifm
fi



if [[ $@ == install ]]; then
	#CLONING REPOSITORY
	git clone https://github.com/vifm/vifm ~/vifm

	#INSTALLING DEPENDENCIES
	sudo apt-get install build-essential
	sudo apt-get install libncursesw5-dev
	sudo apt-get install sshfs curlftpfs fuse fuse-zip fusefat fuseiso
	sudo apt-get install intltool

	cd ~/vifm

	#RESOLVING DEPENDENCIES
	~/vifm/configure

	#COMPILING
	make

	#INSTALLATION
	sudo make install
fi



if [[ $@ == uninstall ]]; then
	cd ~/vifm		
	sudo make uninstall
fi
