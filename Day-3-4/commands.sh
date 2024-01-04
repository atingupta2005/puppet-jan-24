## Manifest
puppet --version 

puppet help 
 
puppet resource user root

cd ~/puppet-jan-24/Day-3-4
puppet parser validate manifests/create-user.pp
 
sudo puppet apply --noop manifests/create-user.pp
 
sudo puppet apply manifests/create-user.pp

id deploy

# sudo dpkg --remove --force-all rstudio-server
# sudo apt --fix-broken install

sudo puppet apply manifests/install-rstudio.pp

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

sudo ls /etc/puppetlabs/code/environments/production/manifests

sudo puppet agent -t

curl localhost:8080