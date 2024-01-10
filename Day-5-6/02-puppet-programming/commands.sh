# Puppet Programming
## Clone GIT Repo
cd ~
rm -rf ~/puppet-jan-24
#sudo yum install git -y
#sudo apt install git -y
git clone https://github.com/atingupta2005/puppet-jan-24/

cd ~/puppet-jan-24/Day-5-6/02-puppet-programming
sudo puppet apply 01-file_unix.pp
sudo tree /tmp/1
sudo ls -al  /tmp/1
sudo cat /tmp/1/file.txt
sudo cat /tmp/1/myfile.txt
puppet apply 02-file_windows.pp
dir c:\www
cat c:\www\page2.html
cat c:\page.html
sudo /usr/local/bin/puppet apply 03-centos-apache_linux.pp
curl localhost:8080
puppet apply 04-grafana_windows.pp
curl http://localhost:3000/login
sudo puppet apply 05-all_grafana-centos-windows.pp
sudo systemctl start  grafana-server
sudo systemctl status  grafana-server
curl http://localhost:3000/login
sudo puppet apply 06-linux_users.pp
sudo apt purge tree -y
sudo puppet apply 07-notify_class-inheritance.pp


id exampleappdev
id exampleapptest
id exampleappprod

# Note: Absolute path of puppet on Linux:
/usr/local/bin/puppet