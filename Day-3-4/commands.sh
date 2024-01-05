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

# sudo puppet apply manifests/install-rstudio.pp

## Modules
cd ~
wget https://apt.puppet.com/puppet-tools-release-focal.deb
sudo dpkg -i puppet-tools-release-focal.deb
sudo apt-get update
sudo apt-get install pdk -y

#sudo su
cd /etc/puppetlabs/code/environments/production/modules

pdk new module java
pdk new module tomcat --skip-interview 

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

curl localhost:8080


## To listen on all ports
## open /etc/tomcat9/server.xml and change to 
 <Connector connectionTimeout="20000" port="8080" protocol="HTTP/1.1" redirectPort="8443" address="0.0.0.0" />