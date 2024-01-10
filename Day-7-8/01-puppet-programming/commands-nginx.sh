# Puppet Programming

## Clone GIT Repo
cd ~
rm -rf ~/puppet-jan-24
git clone https://github.com/atingupta2005/puppet-jan-24/

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
sudo cp ~/puppet-jan-24/Day-7-8/01-puppet-programming/modules/node-def-1.pp /etc/puppetlabs/code/environments/production/manifests/node-def-1.pp
sudo cp ~/puppet-jan-24/Day-7-8/01-puppet-programming/modules/nginx/templates/*.epp /etc/puppetlabs/code/environments/production/modules/nginx/templates/

sudo cp ~/puppet-jan-24/Day-7-8/01-puppet-programming/modules/nginx/manifests/*.pp /etc/puppetlabs/code/environments/production/modules/nginx/manifests/

sudo cp ~/puppet-jan-24/Day-7-8/01-puppet-programming/modules/nginx/hiera.yaml /etc/puppetlabs/code/environments/production/modules/nginx/hiera.yaml

sudo cp -R ~/puppet-jan-24/Day-7-8/01-puppet-programming/modules/nginx/data /etc/puppetlabs/code/environments/production/modules/nginx/

sudo tree /etc/puppetlabs/code/environments/production/manifests
sudo tree /etc/puppetlabs/code/environments/production/modules/nginx


sudo puppet lookup nginx::install::package_name
sudo puppet lookup nginx::install::package_status
sudo puppet lookup nginx::homepage::h1_message
sudo puppet lookup nginx::service::package_name
sudo puppet lookup nginx::config::listen_port
sudo puppet lookup nginx::config::config_file_path

sudo apt purge nginx* -y

sudo puppet agent -t -vvv

curl localhost:8484

ls -al /etc/nginx/sites-enabled
sudo cat /etc/nginx/sites-enabled/default | grep 8484
sudo cat /etc/nginx/sites-enabled/default
ls -al /var/www/html/
sudo cat /var/www/html/index.nginx-debian.html | grep customizations
curl localhost:8484

