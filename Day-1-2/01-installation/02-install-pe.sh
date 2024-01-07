cd ~/puppet-enterprise-2023.5.0-ubuntu-20.04-amd64
sudo ./puppet-enterprise-uninstaller
cd ~
rm -rf puppet-enterprise-2023.5.0-ubuntu-20.04-amd64*
sudo rm -rf /etc/puppetlabs/
sudo rm -rf ~/.puppetlabs
sudo rm -rf /opt/puppetlabs
sudo apt update
sudo apt install -y zip unzip tree vim nano
cd ~
wget --content-disposition 'https://pm.puppet.com/cgi-bin/download.cgi?dist=ubuntu&rel=20.04&arch=amd64&ver=latest'
tar -xvf puppet-enterprise-2023.5.0-ubuntu-20.04-amd64.tar.gz
cd puppet-enterprise-2023.5.0-ubuntu-20.04-amd64
sudo rstudio-server stop
sudo ./puppet-enterprise-installer
sudo puppet infrastructure console_password --password=admin123
sudo puppet agent -t
sudo puppet agent -t
