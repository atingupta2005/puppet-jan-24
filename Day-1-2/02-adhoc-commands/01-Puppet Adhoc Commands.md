# Adhoc Commands
## Bootstrap client: Tasks that bootstrap or install Puppet on the agent node  (On node)
```
sudo puppet agent -t --server puppet
```

## Update Global manifest (On Server)
```
sudo nano /etc/puppetlabs/code/environments/production/manifests/site.pp
```

```
node 'default'	{
	$packages = ['telnet', 'tree', 'git', 'zsh']
	package { $packages:
	ensure => "installed"
  }
}
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
sudo nano /etc/puppetlabs/code/environments/production/manifests/site.pp
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
puppet module install <name>		  # puppetlabs/mysql
puppet module uninstall <name>  # puppetlabs/mysql
puppet module upgrade <name>    # puppetlabs/mysql
```

## Inspecting resources and types:(On server)
```
puppet describe -l
puppet resource <type name>
puppet resource service
```

## To check the version (On server)
```
puppet --version
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
puppetserver ca list
puppetserver ca list --all
puppetserver ca sign <name>
sudo puppet node purge <CERTNAME>
puppetserver ca clean --certname <name> #Removes cert
```