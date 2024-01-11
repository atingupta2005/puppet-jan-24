# Puppet Programming

## Clone GIT Repo
```
cd ~
rm -rf ~/puppet-jan-24
git clone https://github.com/atingupta2005/puppet-jan-24/
```

## Run Various Manifests
cd ~/puppet-jan-24/Day-9-10/

sudo cat /etc/hosts
sudo /opt/puppetlabs/bin/puppet apply manifests/add_host_entry.pp
sudo cat /etc/hosts
sudo /opt/puppetlabs/bin/puppet apply manifests/remove_host_entry.pp
sudo cat /etc/hosts
sudo /opt/puppetlabs/bin/puppet apply manifests/remove_unmanaged.pp
sudo cat /etc/hosts

