# Puppet Programming

## Clone GIT Repo
cd ~
rm -rf ~/puppet-jan-24
git clone https://github.com/atingupta2005/puppet-jan-24/

## Run Various Manifests
cd ~/puppet-jan-24/Day-3-4
sudo puppet parser validate 04-puppet-programming/manifests/01-hash.pp
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
sudo puppet resource user | grep deploy
sudo puppet resource package | grep tree

sudo puppet module install puppetlabs-stdlib
sudo puppet apply 04-puppet-programming/manifests/10-create-users-multiple.pp


## Install PDK
#sudo apt-get purge pdk -y
#cd ~
#sudo apt-get install pdk -y
#wget https://apt.puppet.com/puppet-tools-release-focal.deb
#sudo dpkg -i puppet-tools-release-focal.deb
#sudo apt-get update
#sudo apt-get install pdk -y

## Create Custom Modules
sudo su
cd /etc/puppetlabs/code/environments/production/modules
rm -rf java tomcat
pdk new module java --skip-interview 
pdk new module tomcat --skip-interview
sudo tree /etc/puppetlabs/code/environments/production/modules
sudo ls /etc/puppetlabs/code/environments/production/modules
exit

## Copy code of Java and Tomcat module from GitHub
sudo mv /etc/puppetlabs/code/environments/production/manifests/site.pp /etc/puppetlabs/code/environments/production/manifests/site.pp.bkp
sudo cp ~/puppet-jan-24/Day-3-4/04-puppet-programming/modules/node-def-1.pp /etc/puppetlabs/code/environments/production/manifests/node-def-1.pp
sudo cp ~/puppet-jan-24/Day-3-4/04-puppet-programming/modules/java/manifests/*.pp /etc/puppetlabs/code/environments/production/modules/java/manifests/
sudo cp ~/puppet-jan-24/Day-3-4/04-puppet-programming/modules/tomcat/templates/*.epp /etc/puppetlabs/code/environments/production/modules/tomcat/templates/

sudo cp ~/puppet-jan-24/Day-3-4/04-puppet-programming/modules/tomcat/manifests/*.pp /etc/puppetlabs/code/environments/production/modules/tomcat/manifests/

sudo tree /etc/puppetlabs/code/environments/production/manifests
sudo tree /etc/puppetlabs/code/environments/production/modules

sudo apt purge tomcat* -y

curl localhost:8080

sudo puppet agent -t

curl localhost:8080


sudo systemctl stop  tomcat9

sudo systemctl start  tomcat9

sudo systemctl status  tomcat9


ls -al /etc/tomcat9
sudo cat /etc/tomcat9/server.xml | grep 8080
sudo cat /etc/tomcat9/server.xml
ls -al /var/lib/tomcat9/webapps/ROOT/
cat /var/lib/tomcat9/webapps/ROOT/index.html
curl localhost:8080

sudo apt purge tomcat* -y
sudo apt install tomcat9 -y
#sudo vim /etc/tomcat9/server.xml
sudo cat /etc/tomcat9/server.xml | grep 8080
curl localhost:8080
sudo sed -i 's/Connector port="8080" /Connector port="8585" address="0.0.0.0" /g' /etc/tomcat9/server.xml
sudo cat /etc/tomcat9/server.xml | grep 8585
sudo systemctl stop  tomcat9
sudo systemctl start  tomcat9
sudo systemctl status  tomcat9
curl localhost:8585

sudo reboot
