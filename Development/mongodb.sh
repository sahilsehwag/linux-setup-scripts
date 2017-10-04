#! /bin/bash
if [[ $* =~ help ]]; then
	echo centos = Install MongoDB on centos
	echo redhat = Install MongoDB on RedHat
fi


if [[ $@ =~ centos ]]; then
	sudo touch /etc/yum.repos.d/mongodb.repo
	sudo echo '[mongodb]' >> /etc/yum.repos.d/mongodb.repo
	sudo echo 'name=MongoDB Repository' >> /etc/yum.repos.d/mongodb.repo
	sudo echo 'baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/' >> /etc/yum.repos.d/mongodb.repo
	sudo echo 'gpgcheck=0' >> /etc/yum.repos.d/mongodb.repo
	sudo echo 'enabled=1' >> /etc/yum.repos.d/mongodb.repo

	sudo yum -y update
	sudo yum -y install mongodb-org mongodb-org-server
fi
if [[ $@ =~ redhat ]]; then
	sudo touch /etc/yum.repos.d/mongodb.repo
	sudo echo '[mongodb]' >> /etc/yum.repos.d/mongodb.repo
	sudo echo 'name=MongoDB Repository' >> /etc/yum.repos.d/mongodb.repo
	sudo echo 'baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/' >> /etc/yum.repos.d/mongodb.repo
	sudo echo 'gpgcheck=0' >> /etc/yum.repos.d/mongodb.repo
	sudo echo 'enabled=1' >> /etc/yum.repos.d/mongodb.repo

	sudo yum -y update
	sudo yum -y install mongodb-org mongodb-org-server
fi
