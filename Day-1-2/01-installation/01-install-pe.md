# Install Puppet Enterprise

- Refer:
  - https://puppet.com/try-puppet/puppet-enterprise/download/

## Remove PE
```
cd ~/puppet-enterprise-2023.5.0-ubuntu-20.04-amd64
sudo ./puppet-enterprise-uninstaller
```

```
cd ~
rm -rf puppet-enterprise-2023.5.0-ubuntu-20.04-amd64*
sudo rm -rf /etc/puppetlabs/
sudo rm -rf ~/.puppetlabs
sudo rm -rf /opt/puppetlabs
```

## Download
```
sudo apt update
sudo apt install -y zip unzip tree vim nano
cd ~
wget --content-disposition 'https://pm.puppet.com/cgi-bin/download.cgi?dist=ubuntu&rel=20.04&arch=amd64&ver=latest'
tar -xvf puppet-enterprise-2023.5.0-ubuntu-20.04-amd64.tar.gz
cd puppet-enterprise-2023.5.0-ubuntu-20.04-amd64
```

## Note: Please make sure to run below commands after installing Puppet
  - Disable firewall on the puppet master
  - Run puppet agent -t


```
sudo hostnamectl set-hostname app1-vm-0-girkys.eastus.cloudapp.azure.com --static
```

```
sudo hostnamectl set-hostname app1-vm-0-girkys.eastus.cloudapp.azure.com --transient
```

```
hostnamectl
```

## Configure Puppet before installation (Required)
```
nano conf.d/pe.conf
```

## Mention the host name as below:
- Note: Mention host names as per the output of command - hostnamectl
```
"pe_install::puppet_master_dnsaltnames": ["puppet", "app1-vm-0-girkys.eastus.cloudapp.azure.com", "puppetmaster", "devlinux-0"]
```

## Install Puppet Server
```
sudo ./puppet-enterprise-installer
```

## Set password
```
sudo puppet infrastructure console_password --password=admin123
```


```
sudo puppet agent -t
sudo puppet agent -t
sudo puppet agent -t
```


## Configure (Optional)
```
puppet -V
sudo cat /etc/puppetlabs/puppet/puppet.conf
```

## Check logs
```
tail -f /var/log/syslog   # Ubuntu
tail -f /var/log/messages   # Centos
```

## Restart Services
```
sudo service pe-puppetserver restart
sudo service pe-puppetserver status
```

## Configuration parameters and the pe.conf file

## Log in to the PE console
- Credentials: admin/admin123
- Open the console by entering the URL <PRIMARY_HOSTNAME> into your browser. The hostname is your primary server's trusted certificate name.
- On the console login page, log in with the username admin and the password you created when installing. Keep track of this login because you'll need it later.
