# Code and data directory (codedir)
- The codedir is the main directory for Puppet code and data
- It is used by the primary Puppet server and Puppet apply.
- It contains environments (which contain your manifests and modules), a global modules directory for all environments, and your Hiera data and configuration.

## Location
- The codedir is located in one of the following locations:
  - *nix: /etc/puppetlabs/code
  - Windows: %PROGRAMDATA%\PuppetLabs\code (usually C:\ProgramData\PuppetLabs\code)

- To configure the location of the codedir, set the  codedir setting in your /etc/puppetlabs/puppet/puppet.conf file



# Config directory (confdir)
- Puppet’s confdir is the main directory for the Puppet configuration. It contains configuration files and the SSL data.

## Location
- The confdir is located in one of the following locations:
  - *nix root users: /etc/puppetlabs/puppet
  - Windows: %PROGRAMDATA%\PuppetLabs\puppet\etc (usually C:\ProgramData\PuppetLabs\puppet\etc)

- Puppet’s confdir can’t be set in the puppet.conf, because Puppet needs the confdir to locate that config file.
- Instead, run commands with the --confdir parameter to specify the confdir
- If --confdir isn’t specified when a Puppet application is started, the command uses the default confdir location.

## Contents
- The confdir contains several config files and the SSL data.
  - ssl directory: contains each node’s certificate infrastructure.
  - puppet.conf: Puppet’s main config file.
  - fileserver.conf: Configuration for additional fileserver mount points.
  - hiera.yaml: The global configuration for Hiera data lookup. Environments and modules can also have their own hiera.yaml files.


# Main manifest directory
- Puppet starts compiling a catalog either with a single manifest file or with a directory of manifests that are treated like a single file. This starting point is called the main manifest or site manifest.

## Specifying the manifest for Puppet apply
```
puppet apply /etc/puppetlabs/code/environments/production/manifests/site.pp
```

## Manifest directory behavior
- When the main manifest is a directory, Puppet parses every .pp file in the directory in alphabetical order and evaluates the combined manifest
- Puppet treats the directory as one manifest, so, for example, a variable assigned in the file 01_all_nodes.pp is accessible in node_web01.pp.


# SSL directory (ssldir)
- Puppet stores its certificate infrastructure in the SSL directory (ssldir) which has a similar structure on all Puppet nodes, whether they are agent nodes, primary Puppet servers, or the certificate authority (CA) server.

## Location
- By default, the ssldir is a subdirectory of the confdir.

## Contents
- The ssldir contains Puppet certificates, private keys, certificate signing requests (CSRs), and other cryptographic documents.
