# Puppet Programming

## Clone GIT Repo
cd ~
rm -rf ~/puppet-jan-24
git clone https://github.com/atingupta2005/puppet-jan-24/

## Run Various Manifests
cd ~/puppet-jan-24/Day-9-10/


sudo puppet parser validate manifests/01-iterators-and-loops.pp
sudo puppet apply manifests/01-iterators-and-loops.pp

sudo cat /etc/hosts
sudo /opt/puppetlabs/bin/puppet apply manifests/02-add_host_entry.pp
sudo cat /etc/hosts
sudo /opt/puppetlabs/bin/puppet apply manifests/03-remove_host_entry.pp
sudo cat /etc/hosts
sudo /opt/puppetlabs/bin/puppet apply manifests/04-remove_unmanaged.pp
sudo cat /etc/hosts
