# Add nodes to the inventory - UBUNTU

- First on Master Console UI need to add the node with Private IP and run the command on the node to install the agent

## Connect to the VM using SSH and run below commands
```
sudo su
```

```
cat /etc/hosts
```

## Replace IPs, DNS names with that of Puppet Master node
```
echo 20.163.253.233 puppet app1-vm-0-girkys.eastus.cloudapp.azure.com puppetmaster devlinux-0  >> /etc/hosts
echo 10.0.0.4 puppet >> /etc/hosts
exit
```

```
cat /etc/hosts
```

## Install Puppet agent by downloading the corresponding agent using below URL:
- https://www.puppet.com/downloads/puppet-enterprise
```
cd ~
wget <URL>
sudo apt install ./<file_name>
```

```
sudo puppet agent --test
```

```
puppet -V
```

```
tail -f /var/log/syslog
```

## View the client cert fingerprint
```
sudo puppet agent --fingerprint
```

## View all certificates on Puppet Master:
```
sudo /opt/puppetlabs/bin/puppetserver ca list --all
```


## View pending certificate signing requests on Puppet Master:
```
sudo /opt/puppetlabs/bin/puppetserver ca list
```

## Sign pending certificate signing requests on Puppet Master:
```
sudo /opt/puppetlabs/bin/puppetserver ca sign --all
sudo /opt/puppetlabs/bin/puppetserver ca list
```
