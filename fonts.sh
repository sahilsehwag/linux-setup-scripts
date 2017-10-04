#! /bin/bash
if [[ $* =~ help ]]; then
	#echo awesome-terminal
	echo powerline
	#echo nerd-fonts
	#echo font-awesome
	#echo devicons
	#echo pomicons
fi


#AWESOME TERMINAL FONTS
if [[ $* =~ awesome-terminal ]]; then
fi

#POWERLINE FONTS
if [[ $* =~ powerline ]]; then
	git clone https://github.com/powerline/fonts.git ~/powerline
	bash ~/powerline/install.sh
fi

#NERD FONTS
if [[ $* =~ nerd-fonts ]]; then
	git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
	#INCOMPLETE....
fi

