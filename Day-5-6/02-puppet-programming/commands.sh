# Puppet Programming
## Clone GIT Repo
cd ~
rm -rf ~/puppet-jan-24
git clone https://github.com/atingupta2005/puppet-jan-24/

cd ~/puppet-jan-24/Day-5-6/02-puppet-programming
sudo puppet apply 01-file_unix.pp
sudo tree /tmp/1
sudo ls -al  /tmp/1
sudo cat /tmp/1/file.txt
sudo cat /tmp/1/myfile.txt
sudo puppet apply 02-file_windows.pp
sudo puppet apply 03-centos-apache_linux.pp
sudo puppet apply 04-grafana_windows.pp
sudo puppet apply 05-all_grafana-centos-windows.pp
sudo puppet apply 06-linux_users.pp
sudo puppet apply 07-all_grafana-centos-windows.pp
sudo puppet apply 08-all_grafana_data_types-centos-windows.pp

id exampleappdev
id exampleapptest
id exampleappprod

# Note: Absolute path of puppet on Linux:
/usr/local/bin/puppet