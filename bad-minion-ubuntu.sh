wget -O - https://repo.saltstack.com/apt/ubuntu/18.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
sudo echo "deb http://repo.saltstack.com/apt/ubuntu/18.04/amd64/latest bionic main" > /etc/apt/sources.list.d/saltstack.list
sudo apt update
sudo apt install salt-minion
# Replace with your conf, this is the default
sudo curl https://raw.githubusercontent.com/3ndG4me/BadSalt/master/bad-minion.conf -o /etc/salt/minion
sudo systemctl enable salt-master --now
