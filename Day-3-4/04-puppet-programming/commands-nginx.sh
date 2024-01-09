# Puppet Programming

## Clone GIT Repo
cd ~
rm -rf ~/puppet-jan-24
git clone https://github.com/atingupta2005/puppet-jan-24/

## Run Various Manifests
cd ~/puppet-jan-24/Day-3-4

## Install PDK
sudo apt-get purge pdk -y
cd ~
sudo apt-get install pdk -y
wget https://apt.puppet.com/puppet-tools-release-focal.deb
sudo dpkg -i puppet-tools-release-focal.deb
sudo apt-get update
sudo apt-get install pdk -y

## Create Custom Modules
sudo su
cd /etc/puppetlabs/code/environments/production/modules
rm -rf nginx
pdk new module nginx --skip-interview 
sudo tree /etc/puppetlabs/code/environments/production/modules/nginx
sudo ls /etc/puppetlabs/code/environments/production/modules
exit

## Copy code of Java and nginx module from GitHub
sudo mv /etc/puppetlabs/code/environments/production/manifests/site.pp /etc/puppetlabs/code/environments/production/manifests/site.pp.bkp
sudo cp ~/puppet-jan-24/Day-3-4/04-puppet-programming/modules/node-def-1.pp /etc/puppetlabs/code/environments/production/manifests/node-def-1.pp
sudo cp ~/puppet-jan-24/Day-3-4/04-puppet-programming/modules/nginx/templates/*.epp /etc/puppetlabs/code/environments/production/modules/nginx/templates/

sudo cp ~/puppet-jan-24/Day-3-4/04-puppet-programming/modules/nginx/manifests/*.pp /etc/puppetlabs/code/environments/production/modules/nginx/manifests/

sudo tree /etc/puppetlabs/code/environments/production/manifests
sudo tree /etc/puppetlabs/code/environments/production/modules

sudo apt purge nginx* -y

sudo puppet agent -t

curl localhost:8181

sudo systemctl stop  nginx

sudo systemctl start  nginx

sudo systemctl status  nginx

ls -al /etc/nginx/sites-enabled
sudo cat /etc/nginx/sites-enabled/default | grep 8181
sudo cat /etc/nginx/sites-enabled/default
ls -al /var/www/html/
cat /var/www/html/index.nginx-debian.html
curl localhost:8181

sudo apt purge nginx* -y
sudo apt install nginx -y


--------------------
sudo apt purge nginx* -y
sudo rm -rf /etc/nginx
sudo apt install nginx -y
nginx -v

curl http://localhost

sudo cat /etc/nginx/sites-enabled/default  | grep default_server

sudo sed -i 's/80 default_server;/8181 default_server;/g' /etc/nginx/sites-enabled/default 

sudo sed -i 's/80 default_server;/8181 default_server;/g' /etc/nginx/sites-enabled/default 

sudo cat /etc/nginx/sites-enabled/default  | grep default_server

sudo service nginx restart
sudo service nginx status

curl localhost:8181
