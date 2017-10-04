#! /bin/bash
#HELP
if [[ $@ =~ help ]]; then
	echo ubuntu = PYTHON3 ON UBUNTU
	echo centos6-36 = PYTHON3.6 ON CENTOS6
	echo centos7-36 = PYTHON3.6 ON CENTOS7
	echo debian mysql = RUNS mysqlclient INSTLLATION FOR DEBIAN MACHINES
	echo rpm mysql = RUNS mysqlclient INSTLLATION FOR RPM MACHINES
	echo anaconda2 = INSTALLS ANACONDA 2
	echo anaconda4 = INSTALLS ANACONDA 4
	echo datascience = INSTALL DATASCIENCE PAKCAGES AND MODULES
fi


#VARIABLES#
$pip=pip3
$python=python3
#VARIABLES#


#UBUNTU
if [[ $@ =~ ubuntu ]]; then
	sudo apt-get -y install $python-setuptools
	sudo apt-get -y install $python-dev
	sudo apt-get -y install $python
	sudo apt-get -y install $python-pip
	sudo apt-get -y install $python-tk
fi


#CETNOS
if [[ $@ =~ centos7-36 ]]; then
	sudo yum -y install https://centos7.iuscommunity.org/ius-release.rpm
	sudo yum -y install python36u
	sudo yum -y install python36u-pip
	sudo yum -y install python36u-devel
fi
if [[ $@ =~ centos6-36 ]]; then
	sudo yum -y install https://centos6.iuscommunity.org/ius-release.rpm
	sudo yum -y install python36u
	sudo yum -y install python36u-pip
	sudo yum -y install python36u-devel
fi



#DEBIAN MACHINES
if [[ $@ =~ debian ]]; then
	if [[ $@ =~ mysql ]]; then
		sudo apt-get -y install $python-dev
		sudo apt-get -y install libmysqlclient-dev
		sudo pip install mysqlclient 
	fi
fi



#FEDORA MACHINES
if [[ $@ =~ rpm ]]; then
	if [[ $@ =~ mysql ]]; then
		sudo yum -y install $python-devl
		sudo yum -y install mysql-devel
		sudo pip install mysqlclient 
	fi
fi




#INSTALLING ANACONDA
if [[ $@ =~ anaconda2 ]]; then
	cd ~
	sudo wget https://repo.continuum.io/archive/Anaconda3-2.3.0-Linux-x86_64.sh
	bash Anaconda-2.3.0-Linux-x86_64.sh
	rm ~/Anaconda-2.3.0-Linux-x86_64.sh
fi
if [[ $@ =~ anaconda3 ]]; then
	cd ~
	sudo wget https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh
	bash Anaconda-4.2.0-Linux-x86_64.sh
	rm ~/Anaconda-4.2.0-Linux-x86_64.sh
fi



#INSTALLING DATA SCIENCE PACKAGES
if [[ $@ =~ datascience ]]; then
	sudo $pip install ipython

	sudo $pip install numpy
	sudo $pip install pandas
	sudo $pip install scipy

	sudo $pip install matplotlib
	sudo $pip install seaborn

	sudo $pip install nltk
	sudo $pip install textblob

	sudo $pip install sqlalchemy

	sudo $pip install tensorfow
	sudo $pip install scikit-learn
fi
