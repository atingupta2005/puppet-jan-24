# Puppet Programming

## Clone GIT Repo
```
cd ~
git clone https://github.com/atingupta2005/puppet-jan-24/
cd ~/puppet-jan-24/Day-3-4
```

## Run Various Manifests
sudo puppet apply 04-puppet-programming/manifests/01-hash.pp
sudo puppet apply 04-puppet-programming/manifests/02-hash2.pp
sudo puppet apply 04-puppet-programming/manifests/03-hashes.pp
sudo puppet apply 04-puppet-programming/manifests/04-split.1.pp
sudo puppet apply 04-puppet-programming/manifests/05-split.2.pp
sudo puppet apply 04-puppet-programming/manifests/06-conditional.pp
sudo puppet apply 04-puppet-programming/manifests/07-comparisions-test.pp
sudo puppet parser validate 04-puppet-programming/manifests/08-create-user.pp
sudo puppet apply 04-puppet-programming/manifests/08-create-user.pp
id deploy
sudo puppet resource user deploy


## Install PDK
cd ~
wget https://apt.puppet.com/puppet-tools-release-focal.deb
sudo dpkg -i puppet-tools-release-focal.deb
sudo apt-get update
sudo apt-get install pdk -y

## Create Custom Modules
sudo su
cd /etc/puppetlabs/code/environments/production/modules

pdk new module java --skip-interview 
pdk new module tomcat --skip-interview 

exit

## Copy code of Java and Tomcat module from GitHub
sudo mv /etc/puppetlabs/code/environments/production/manifests/site.pp /etc/puppetlabs/code/environments/production/manifests/site.pp.bkp
cd /tmp
sudo rm node-def-1.pp
wget https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-3-4/05-puppet-programming/modules/node-def-1.pp
sudo cp node-def-1.pp /etc/puppetlabs/code/environments/production/manifests/node-def-1.pp

sudo rm init.pp
wget https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-3-4/05-puppet-programming/modules/java/manifests/init.pp
sudo cp init.pp /etc/puppetlabs/code/environments/production/manifests/modules/java/manifests/init.pp

sudo rm tomcat.conf init.pp config.pp install.pp
wget https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-3-4/05-puppet-programming/modules/tomcat/files/tomcat.conf
wget https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-3-4/05-puppet-programming/modules/tomcat/manifests/init.pp
wget https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-3-4/05-puppet-programming/modules/tomcat/manifests/config.pp
wget https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-3-4/05-puppet-programming/modules/tomcat/manifests/install.pp

sudo cp tomcat.conf /etc/puppetlabs/code/environments/production/manifests/modules/tomcat/files/tomcat.conf
sudo cp init.pp /etc/puppetlabs/code/environments/production/manifests/modules/tomcat/manifests/init.pp
sudo cp config.pp /etc/puppetlabs/code/environments/production/manifests/modules/java/manifests/config.pp
sudo cp install.pp /etc/puppetlabs/code/environments/production/manifests/modules/java/manifests/install.pp

sudo tree /etc/puppetlabs/code/environments/production/manifests
sudo puppet agent -t
