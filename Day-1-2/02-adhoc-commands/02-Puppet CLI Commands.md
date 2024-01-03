# Puppet Server Configuration (Server)
 - Using the puppet config command we can view and set configuration parameters including the path to the manifest
 - If the manifest is a directory then each manifest is processed in alphanumeric order
# Print settings from Puppet.confg file as well as the defaults
```
puppet config print
puppet config print config
```

#To specify from which environment from config file to print
```
puppet config print config --environment production
```

## Manifest Files
 - The puppet agent can apply local manifests by specifying the path
 - If the path is a directory all manifests are processed
 - If the agent connects to the server the agent the manifests are located by the settings of the server

## To get from the puppet server
```
puppet agent -t
```

## Agent Run
 - Be default the agent runs every 30 minutes. We can force a run from the CLI.
```
puppet config print runinterval
expr 1800 / 60
puppet agent -t
```

## Working with Default Environments (Server)
```
vim 01.pp
notify {'Hello World':
	message => "Hello World!",
}
```

```
puppet apply 01.pp
puppet agent -t
```
```
vim 02.pp
notify {'Hello World 2':
	message => "Hello World 2!",
}
```
```
puppet agent -t
puppet config print runinterval
expr 1800 / 60
systemctl status puppet
```

# Resources
 - Resources are the main building block of Puppet:
	- notify resource with Hello World
	- package resource to ensure chrony was installed
	- service resource to ensure chronyd was running
 - Puppet is declarative, meaning it states what it want done not how to do it
 - On CentOS the packaging will be done with dnf/yum, on Ubuntu with apt and Windows with chocolatly.

## List Resources and Help (Server)
 - The first command list all resource types. We can gain help on a type with describe and we can print the example configuration from a resource.

```
puppet resource --type
```

```
puppet describe service
```


- service should show as running and enabled
```
puppet resource service atd
```

### If at is not installed on my system so should show as stopped and disabled

