
echo "Pick your base OS:"
echo "0 = Debian/Kali"
echo "1 = CentOS/RHEL"
echo "2 = Ubuntu"
echo "3 = MacOS"

read INPUT

if [[ $INPUT -eq 0 ]]; then
    # Debian/Kali PoC (Not fully working, at least on Kali...)
	echo "Fetching Salt Repo..."
    wget -O - https://repo.saltstack.com/apt/debian/9/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
    sudo echo "deb http://repo.saltstack.com/apt/debian/9/amd64/latest stretch main" > /etc/apt/sources.list.d/saltstack.list
    echo "Installing Salt master..."
    sudo apt update
    sudo apt install salt-master
	echo "Download default bad-master.conf from Github? (Y/n)"
	read CONF
	if [[ $CONF == 'y' || $CONF == 'Y' ]]; then
		sudo curl https://raw.githubusercontent.com/3ndG4me/BadSalt/master/bad-master.conf -o /etc/salt/master
	fi
	sudo systemctl enable salt-master --now
elif [[ $INPUT -eq 1 ]]; then
	# CentOS/RHEL PoC
	echo "Fetching Salt Repo..."
	sudo yum install https://repo.saltstack.com/yum/redhat/salt-repo-latest-2.el7.noarch.rpm 
	echo "Installing Salt Master..."
	sudo yum install salt-master
	echo "Download default bad-master.conf from Github? (Y/n)"
	read CONF
	if [[ $CONF == 'y' || $CONF == 'Y' ]]; then
		sudo curl https://raw.githubusercontent.com/3ndG4me/BadSalt/master/bad-master.conf -o /etc/salt/master
	fi
	sudo systemctl enable salt-master --now
elif [[ $INPUT -eq 2 ]]; then
	echo "Fetching Salt Repo..."
	wget -O - https://repo.saltstack.com/apt/ubuntu/18.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
	sudo echo "deb http://repo.saltstack.com/apt/ubuntu/18.04/amd64/latest bionic main" > /etc/apt/sources.list.d/saltstack.list
	echo "Installing Salt Master..."
	sudo apt update
	sudo apt install salt-master
	echo "Download default bad-master.conf from Github? (Y/n)"
	read CONF
	if [[ $CONF == 'y' || $CONF == 'Y' ]]; then
		sudo curl https://raw.githubusercontent.com/3ndG4me/BadSalt/master/bad-master.conf -o /etc/salt/master
	fi
	sudo systemctl enable salt-master --now
else
	echo "WIP, not supported"
fi
