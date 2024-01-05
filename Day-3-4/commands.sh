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


## Puppet Language
sudo puppet apply 01-Adding-a-resource-to-a-node/site.1.pp
sudo puppet apply 02-Installing-configuring-and-starting-a-service/httpd.pp
sudo puppet apply 03-Variables/site2.pp
sudo puppet apply 04-Symlinks/php.pp
sudo puppet apply 05-Using-inline-templates/chkrootkit.pp
sudo puppet apply 06-Iterating-over-multiple-items/packages.1.pp
sudo puppet apply 07-Using-hashes/hash.pp
sudo puppet apply 07-Using-hashes/hash2.pp
sudo puppet apply 07-Using-hashes/hashes.pp
sudo puppet apply 08-Creating-arrays-with-the-split-function/split.1.pp
sudo puppet apply 08-Creating-arrays-with-the-split-function/split.2.pp
sudo puppet apply 09-Writing-powerful-conditional-statements/conditional.pp
sudo puppet apply 10-Comparisons/test.pp
sudo puppet apply 11-Using-regular-expressions-in-if-statements/arch.pp
sudo puppet apply 11-Using-regular-expressions-in-if-statements/version.pp
sudo puppet apply 12-Using-selectors-and-case-statements/case.pp
sudo puppet apply 12-Using-selectors-and-case-statements/selector.pp
sudo puppet apply 13-Regular-expressions/regex.pp
sudo puppet apply 14-Defaults/default.pp
sudo puppet apply 15-Using-the-in-operator/in.pp
sudo puppet apply 16-Appending-to-and-concatenating-arrays/append.pp
sudo puppet apply 16-Appending-to-and-concatenating-arrays/concat.pp
sudo puppet apply 16-Appending-to-and-concatenating-arrays/packages.pp
sudo puppet apply 17-Merging-hashes/merge.pp
sudo puppet apply 18-Using-the-sensitive-type/sensitive.pp
sudo puppet apply 19-Lambda-functions/lambda.pp
sudo puppet apply 20-reduce/reduce.pp
sudo puppet apply 21-filter/filter.pp
sudo puppet apply 22-map/map.pp
sudo puppet apply 23-slice/slice.1.pp
sudo puppet apply 23-slice/slice.2.pp
sudo puppet apply 24-each/each.pp