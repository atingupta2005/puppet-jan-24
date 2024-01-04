## Manifest
puppet --version 

puppet help 
 
puppet resource user root

puppet parser validate manifests/create-user.pp
 
puppet apply --noop manifests/create-user.pp
 
puppet apply manifests/create-user.pp

wget https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-3-4/manifests/install-rstudio.pp
sudo puppet apply install-rstudio.pp

## Modules
cd /etc/puppetlabs/code/environments/production/modules

puppet module generate user-java

puppet module generate --skip-interview  user-tomcat

## Copy code of Java module
cd ~
cd code-repo/Day3-4
cp -R modules/* /etc/puppetlabs/code/environments/production/modules/
puppet agent -t 