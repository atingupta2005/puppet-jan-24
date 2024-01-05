## Manifest
puppet --version 

puppet help 
 
puppet resource user root

cd 
git clone https://github.com/atingupta2005/puppet-jan-24/
cd ~/puppet-jan-24/Day-3-4
puppet parser validate manifests/create-user.pp
 
sudo puppet apply --noop manifests/create-user.pp
 
sudo puppet apply manifests/create-user.pp

id deploy

# sudo dpkg --remove --force-all rstudio-server
# sudo apt --fix-broken install

# sudo puppet apply ./Puppet-Language/manifests/install-rstudio.pp

## Modules
cd ~
wget https://apt.puppet.com/puppet-tools-release-focal.deb
sudo dpkg -i puppet-tools-release-focal.deb
sudo apt-get update
sudo apt-get install pdk -y

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

sudo ls /etc/puppetlabs/code/environments/production/manifests

sudo puppet agent -t


## Puppet Language
sudo puppet apply ./Puppet-Language/01-Adding-a-resource-to-a-node/site.1.pp
sudo puppet apply ./Puppet-Language/06-Iterating-over-multiple-items/packages.1.pp
sudo puppet apply ./Puppet-Language/07-Using-hashes/hash.pp
sudo puppet apply ./Puppet-Language/07-Using-hashes/hash2.pp
sudo puppet apply ./Puppet-Language/07-Using-hashes/hashes.pp
sudo puppet apply ./Puppet-Language/08-Creating-arrays-with-the-split-function/split.1.pp
sudo puppet apply ./Puppet-Language/08-Creating-arrays-with-the-split-function/split.2.pp
sudo puppet apply ./Puppet-Language/09-Writing-powerful-conditional-statements/conditional.pp
sudo puppet apply ./Puppet-Language/10-Comparisons/test.pp
