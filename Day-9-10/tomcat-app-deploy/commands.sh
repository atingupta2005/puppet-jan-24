## Clone GIT Repo
cd ~
rm -rf ~/puppet-jan-24
git clone https://github.com/atingupta2005/puppet-jan-24/

## Run Various Manifests
cd ~/puppet-jan-24/Day-9-10/tomcat-app-deploy

sudo puppet module install install-tomcat.pp
sudo puppet module install deploy-war.pp
