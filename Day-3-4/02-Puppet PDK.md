# PDK
## On Ubuntu
```
wget https://apt.puppet.com/puppet-tools-release-focal.deb
sudo dpkg -i puppet-tools-release-focal.deb
sudo apt-get update
sudo apt-get install pdk
```

## Basic usage
- PDK can generate modules and classes, validate module metadata, style, and syntax, and run unit tests.

```
cd /etc/puppetlabs/code/environments/production/manifests
```

## Generate a module
```
pdk new module my_module
tree my_module
cd my_module
```

## Generate a class
### From the command line, in your module's directory, run:
```
pdk new class class_name
tree .
```

## Validating a module
### In the module's directory, run:
```
pdk validate
```
