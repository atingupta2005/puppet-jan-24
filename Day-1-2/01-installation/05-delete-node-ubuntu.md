# Delete node

### On Master
```
sudo /opt/puppetlabs/bin/puppetserver ca list --all
sudo puppet node purge <CERTNAME>
sudo /opt/puppetlabs/bin/puppetserver ca clean --certname <CERTNAME>
```

### On node
```
puppet ssl clean
sudo puppet resource service puppet ensure=stopped
puppet config print ssldir --section agent
sudo rm -rf ~/.puppetlabs/etc/puppet/ssl
ls ~/.puppetlabs/etc/puppet/ssl
```

```
sudo apt-get remove --auto-remove puppet-agent -y
sudo apt-get purge  --auto-remove puppet-agent -y
sudo rm -rf /etc/puppetlabs
sudo apt-get purge  --auto-remove puppet-agent -y
sudo apt-get purge  --auto-remove puppet -y
sudo apt-get purge  --auto-remove puppet* -y
sudo apt-get remove --auto-remove puppet* -y
```

```
sudo reboot
```