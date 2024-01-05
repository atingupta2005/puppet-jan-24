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
```

```
cd puppet-enterprise-2023.5.0-ubuntu-20.04-amd64
```

## Note: Please make sure to run below commands after installing Puppet
  - Disable firewall on the puppet master
  - Run puppet agent -t


## Install Puppet Server
```
sudo rstudio-server stop
```

```
sudo ./puppet-enterprise-installer
```

## Set password
```
sudo puppet infrastructure console_password --password=admin123
```

## Run Puppet agent 2 times
```
sudo puppet agent -t
sudo puppet agent -t
```



## Log in to the PE console
- Credentials: admin/admin123
- Open the console by entering the URL <PRIMARY_HOSTNAME> into your browser. The hostname is your primary server's trusted certificate name.
- On the console login page, log in with the username admin and the password you created when installing. Keep track of this login because you'll need it later.
