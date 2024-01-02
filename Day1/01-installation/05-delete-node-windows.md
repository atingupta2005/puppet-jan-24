# Delete node

### On Master
```
sudo /opt/puppetlabs/bin/puppetserver ca list --all
sudo puppet node purge <CERTNAME>
sudo /opt/puppetlabs/bin/puppetserver ca clean --certname <CERTNAME>
```

### On node
```
puppet ssl clean
puppet resource service puppet ensure=stopped
puppet config print ssldir --section agent
```

- Remove the files from the directory given from above command

- Remove Puppet agent from "Add/Remove Programs"


- Reboot the VM