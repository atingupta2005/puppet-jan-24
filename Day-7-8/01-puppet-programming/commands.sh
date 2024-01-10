# Puppet Programming

## Clone GIT Repo
cd ~
rm -rf ~/puppet-jan-24
git clone https://github.com/atingupta2005/puppet-jan-24/

## Run Various Manifests
cd ~/puppet-jan-24/Day-7-8/01-puppet-programming
sudo puppet parser validate manifests/01-iterators-and-loops.pp
sudo puppet apply manifests/01-iterators-and-loops.pp
