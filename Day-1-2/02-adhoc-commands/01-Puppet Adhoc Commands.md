# Adhoc Commands
## Bootstrap client: Tasks that bootstrap or install Puppet on the agent node  (On node)
```
sudo puppet agent -t --server <puppet master ip>
sudo puppet agent -t --server puppet
```

## Write a manifest (On Server)
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
package { 'apache2.0-common':
	ensure => absent,
}
```

## To update packages(Manifest On server)
```
package { 'puppet':
	ensure => latest,
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


## Managing certificates:
```
puppetserver ca list
puppetserver ca list --all
puppetserver ca sign <name>
puppetserver ca clean --certname <name> #Removes cert
```

## Managing nodes:
```
puppet node clean <name> #Removes node + cert
```