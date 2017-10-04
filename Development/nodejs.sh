#! /bin/bash
#HELP
if [[ $@ =~ help ]]; then
	echo ubuntu = INSTALLS NODE.JS ON UBUNTU
fi


#INSTALLING ON UBUNTU
if [[ $@ =~ ubuntu ]]; then
	sudo apt-get install nodejs
	ln -s /usr/bin/nodejs /usr/bin/node
	sudo apt-get install npm
fi
