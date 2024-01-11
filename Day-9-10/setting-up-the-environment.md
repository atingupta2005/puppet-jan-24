# Setting up the environment
- Environments in Puppet are directories holding different versions of your Puppet manifests
- Whenever a node connects to a Puppet master, it informs the Puppet master of its environment
- By default, all nodes report to the production environment
- This causes the Puppet master to look in the production environment for manifests
- You may specify an alternate environment with 
   - The --environment setting when running puppet agent or 
   - By setting environment = newenvironment in /etc/puppet/puppet.conf in the agent section.


## Verify environmentpath
```
sudo /opt/puppetlabs/bin/puppet config print environmentpath
```

## Create environment
```
sudo su
cd /etc/puppetlabs/code/environments
mkdir -p /etc/puppetlabs/code/environments/devel/{manifests,modules}
tree /etc/puppetlabs/code/environments/devel
nano /etc/puppetlabs/code/environments/devel/manifests/site.pp
```

```
node default {
file {'/tmp/devel':
content => 'This is devel',
 }
}
```

- Add a new node which will be used for development/testing purpose
- Create environment group and add this new node to this group

## Run puppet agent on the node and verify that the devel code was delivered:
```
sudo /opt/puppetlabs/bin/puppet agent -t
sudo /opt/puppetlabs/bin/puppet agent -t --environment devel
cat /tmp/devel
```

## Assign nodes to environments via the agent's config file
- Open the agent's puppet.conf file in an editor.
- Find the environment setting in either the agent or main section.
- Set the value of the environment setting to the name of the environment you want the agent to be assigned to.

## Global settings for configuring environments
- The settings in the primary server's puppet.conf file configure how Puppet finds and uses environments.

### environmentpath
 - The environmentpath setting is the list of directories where Puppet looks for environments. 
 - The default value for environmentpath is $codedir/environments.\
 
 ## How to set the default Puppet environment to something other than production?
 - This is the environment setting in the main puppet.conf configuration file
 

### Example
 ```
[server]
environment = devel
```