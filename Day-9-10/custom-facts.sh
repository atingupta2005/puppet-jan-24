### Create the module directory:
sudo mkdir -p /etc/puppetlabs/code/environments/production/modules/nginx/

### Create the plugin library location for Facter:
sudo mkdir -p /etc/puppetlabs/code/environments/production/modules/nginx/lib/facter

### Copy and open a file called web.rb in the plugin location:
cd ~/puppet-jan-24/Day-9-10
ls web.rb
sudo cp web.rb /etc/puppetlabs/code/environments/production/modules/nginx/lib/facter
sudo ls /etc/puppetlabs/code/environments/production/modules/nginx/lib/facter
sudo cat /etc/puppetlabs/code/environments/production/modules/nginx/lib/facter/web.rb


sudo puppet agent -t

sudo facter -p web

sudo facter -p users

sudo facter -p home

sudo facter -p tzname
