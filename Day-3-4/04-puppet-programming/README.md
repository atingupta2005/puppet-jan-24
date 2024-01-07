## Basic usage
- PDK can generate modules and classes, validate module metadata, style, and syntax, and run unit tests.

```
sudo su
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

```
exit
```
