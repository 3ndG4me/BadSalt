# Debian/Kali PoC (Not fully working, at least on Kali...)
#wget -O - https://repo.saltstack.com/apt/debian/9/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
#sudo echo "deb http://repo.saltstack.com/apt/debian/9/amd64/latest stretch main" > /etc/apt/sources.list.d/saltstack.list
#sudo apt update
#sudo apt install salt-master

# CentOS/RHEL PoC
sudo yum install https://repo.saltstack.com/yum/redhat/salt-repo-latest-2.el7.noarch.rpm 
sudo yum install salt-master
wget -O - https://raw.githubusercontent.com/3ndG4me/BadSalt/master/bad-master.conf > /etc/salt/master


sudo systemctl enable salt-master --now
