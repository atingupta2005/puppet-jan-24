# ADHOC Commands

## Bootstrap client: Tasks that bootstrap or install Puppet on the agent node  (On node)
```
sudo puppet agent -t
```

## Update Global manifest (On Server)
```
sudo rm /etc/puppetlabs/code/environments/production/manifests/site.pp
```

```
sudo echo "node 'default'	{" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo echo " $packages = ['telnet', 'tree', 'git', 'zsh']" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo echo " package { $packages:" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo echo "	ensure => 'installed'" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo echo "  }" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo echo "}" >> /etc/puppetlabs/code/environments/production/manifests/site.pp
```

### Note: There should be only one default block. So update existing default block with the above code block

## Open Client Machine and test (On node)
```
sudo /opt/puppetlabs/bin/puppet agent --test
```

## Verify the services (On node)
```
git
tree
```

## To remove packages (Manifest On server)
```
sed -i 's/installed/absent/g' /etc/puppetlabs/code/environments/production/manifests/site.pp
sudo cat /etc/puppetlabs/code/environments/production/manifests/site.pp
```

```
node 'default'	{
	$packages = ['telnet', 'tree', 'git', 'zsh']
	package { $packages:
	ensure => "absent"
  }
}
```


## Displaying facts: (On node)
```
facter              # All system facts
facter -y           # YAML
facter -j           # JSON
facter timezone  # A specific fact
```

## Managing modules: (On server)
 - https://forge.puppet.com/
```
puppet module list
puppet module install puppetlabs-mysql
puppet module uninstall puppetlabs-mysql
puppet module upgrade puppetlabs-mysql
```

## Inspecting resources and types:(On server)
```
puppet describe -l
puppet resource service
```

## Install Package (On server)
```
puppet apply -e 'package { "tree": ensure => installed }'
```

## Idempotent (On server)
 - Puppet, being Idempotent, allows the command to run many times and only actions if we do not meet the configuration requirement
```
sudo puppet apply -e 'package { "tree": ensure => installed }'
tree .
sudo puppet apply -e 'package { "tree": ensure => installed }'
sudo apt remove tree -y
sudo puppet apply -e 'package { "tree": ensure => installed }'
```

## Remove (On server)
```
puppet apply -e 'package { "tree": ensure => absent }'
```


## Managing certificates (On server):
```

sudo /opt/puppetlabs/bin/puppetserver ca list
sudo /opt/puppetlabs/bin/puppetserver ca list --all
sudo /opt/puppetlabs/bin/puppetserver ca sign --certname <name>
sudo puppet node purge <CERTNAME>
sudo /opt/puppetlabs/bin/puppetserver ca clean --certname <name> #Removes cert
```

# Puppet Server Configuration (Server)
 - Using the puppet config command we can view and set configuration parameters including the path to the manifest
 - If the manifest is a directory then each manifest is processed in alphanumeric order

# Print settings from puppet.confg file as well as the defaults
```
puppet config print
puppet config print config
```
