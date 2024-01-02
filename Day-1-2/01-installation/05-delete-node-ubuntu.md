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
ls ~/.puppetlabs/etc/puppet/ssl
mv ~/.puppetlabs/etc/puppet/ssl ~/.puppetlabs/etc/puppet/ssl_bkp1
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