# Puppet Programming

## Clone GIT Repo
```
cd ~
rm -rf ~/puppet-jan-24
git clone https://github.com/atingupta2005/puppet-jan-24/
```

## Run Various Manifests
cd ~/puppet-jan-24/zz-misc-examples

sudo /opt/puppetlabs/bin/puppet apply 1-facts/using_facts_hash.pp
sudo /opt/puppetlabs/bin/puppet apply 2-files_and_directories/add_file_if_absent.pp
cat /tmp/hello-file
sudo /opt/puppetlabs/bin/puppet apply 2-files_and_directories/directory.pp
sudo ls -al /etc/site-conf
sudo ls -al /var/log/admin-app-log
sudo /opt/puppetlabs/bin/puppet apply 2-files_and_directories/remove_files.pp
sudo ls -al /tmp
sudo cat /etc/hosts
sudo /opt/puppetlabs/bin/puppet apply 3-host_file/add_host_entry.pp
sudo cat /etc/hosts
sudo /opt/puppetlabs/bin/puppet apply 3-host_file/remove_host_entry.pp
sudo cat /etc/hosts
sudo /opt/puppetlabs/bin/puppet apply 3-host_file/remove_unmanaged.pp
sudo cat /etc/hosts

sudo /opt/puppetlabs/bin/puppet module install puppet-logrotate

sudo /opt/puppetlabs/bin/puppet apply 4-log_rotate/log_rotate.pp

sudo /opt/puppetlabs/bin/puppet module install puppetlabs-apt
sudo /opt/puppetlabs/bin/puppet apply 5-packages/apt_repo.pp
sudo /opt/puppetlabs/bin/puppet module install puppetlabs-chocolatey
sudo /opt/puppetlabs/bin/puppet apply 5-packages/install_chocolatey_package.pp
sudo /opt/puppetlabs/bin/puppet apply 5-packages/install_chocolatey_package_with_options.pp

sudo /opt/puppetlabs/bin/puppet module install puppetlabs-selinux
sudo /opt/puppetlabs/bin/puppet apply 6-selinux/enable.pp

sudo /opt/puppetlabs/bin/puppet apply 7-services/disabled_at_boot.pp
sudo /opt/puppetlabs/bin/puppet apply 7-services/ensure_running.pp
sudo /opt/puppetlabs/bin/puppet apply 7-services/ensure_stopped.pp
sudo /opt/puppetlabs/bin/puppet apply 7-services/restart_when_file_changes.pp
sudo /opt/puppetlabs/bin/puppet apply 7-services/running_at_boot.pp
