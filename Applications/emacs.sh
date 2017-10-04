#! /bin/bash
if [[ $@ =~ help ]]; then
	echo ubuntu25 = INSTALL EMACS25 ON UBUNTU
	echo ubuntu23 = INSTALL EMACS23 ON UBUNTU
	echo 'spacemacs = INSTALL spacemacs (NOTE: RUN AFTER INSTALLING EMACS OR USE "ubuntu25 spacemacs")'
	echo 'evil-mode = INSTALLS EVIL MODE (NOTE: YOU NEED TO STILL ADD CONFIGURATION TO YOUR EMACS CONFIG)'
fi


#UBUNTU
if [[ $@ =~ ubuntu25 ]]; then
	sudo apt-add-repository -y ppa:adrozdoff/emacs
	sudo apt update
	sudo apt -y install emacs25
fi

if [[ $@ =~ ubuntu24 ]]; then
	echo 'NOT IMPLEMENTED'
fi

if [[ $@ =~ ubuntu23 ]]; then
	sudo apt -y install emacs
fi



#SPACEMACS
if [[ $@ =~ spacemacs ]]; then
	git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
fi
#EVIL-MODE
if [[ $@ =~ evil-mode ]]; then
	git clone https://github.com/emacs-evil/evil ~/.emacs.d/evil
fi
