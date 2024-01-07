# Puppet Programming

## Run Various Manifests
sudo puppet apply 01-hash.pp
sudo puppet apply 02-hash2.pp
sudo puppet apply 03-hashes.pp
sudo puppet apply 04-split.1.pp
sudo puppet apply 05-split.2.pp
sudo puppet apply 06-conditional.pp
sudo puppet apply 07-comparisions-test.pp
puppet parser validate manifests/08-create-user
sudo puppet apply --noop manifests/08-create-user
sudo puppet apply manifests/08-create-user
id deploy
puppet resource user deploy


## Install PDK
cd ~
wget https://apt.puppet.com/puppet-tools-release-focal.deb
sudo dpkg -i puppet-tools-release-focal.deb
sudo apt-get update
sudo apt-get install pdk -y

## Clone Git Repo
cd 
git clone https://github.com/atingupta2005/puppet-jan-24/
cd ~/puppet-jan-24/Day-3-4

## Create modules
sudo su
cd /etc/puppetlabs/code/environments/production/modules

pdk new module java
pdk new module tomcat --skip-interview 

exit

## Copy code of Java module
cd ~
cd ~/puppet-jan-24/Day-3-4
tree modules
sudo cp -R modules/* /etc/puppetlabs/code/environments/production/modules/
sudo ls /etc/puppetlabs/code/environments/production/modules

sudo cp ~/puppet-jan-24/Day-3-4/modules/node-def-1.pp /etc/puppetlabs/code/environments/production/manifests/node-def-1.pp

sudo mv /etc/puppetlabs/code/environments/production/manifests/site.pp /etc/puppetlabs/code/environments/production/manifests/site.pp.bkp

sudo tree /etc/puppetlabs/code/environments/production/manifests

sudo puppet agent -t
