## Clone GIT Repo
cd ~
rm -rf ~/puppet-jan-24
git clone https://github.com/atingupta2005/puppet-jan-24/

## Run Various Manifests
cd ~/puppet-jan-24/Day-9-10/tomcat-app-deploy

sudo puppet module install puppetlabs-tomcat
puppet module install puppetlabs-tomcat

sudo /opt/tomcat/bin/shutdown.sh
sudo rm -rf /opt/tomcat
curl localhost:8086
sudo reboot  ## Only if needed

sudo puppet apply install-tomcat.pp

sudo sed -i 's/Connector port="8080"/Connector port="8086" address="0.0.0.0"/g' /opt/tomcat/conf/server.xml

sudo cat /opt/tomcat/conf/server.xml | grep 8086

sudo /opt/tomcat/bin/shutdown.sh
sudo /opt/tomcat/bin/startup.sh

curl localhost:8086

sudo puppet apply deploy-war.pp

curl localhost:8086/helloworld
