# Create Tests for Our Code
- 

# Log locations
## Primary server logs
- Location: /var/log/puppetlabs/puppetserver/*.log
- Location: /var/log/puppetlabs/

# Troubleshooting puppet infrastructure run commands
- All puppet infrastructure run commands require you to act as the root user on all nodes that the command touches

# Troubleshooting connections between components
- Agent nodes must be able to communicate with the primary server in order to retrieve configurations.
  - If agents can't reach the primary server, running telnet <PRIMARY_HOSTNAME> 8140 returns a Name or service not known error.
     - Verify that the primary server is reachable at a DNS name your agents recognize. If you aren't sure how to do this, refer to: Agents aren't using the primary server's valid DNS name
     - Verify that the pe-puppetserver service is running
  - Agent certificates must be signed by the primary server.
  - Agents trust the primary server only if they contact it at one of the valid hostnames specified when the primary server was installed.
     - To edit the primary server's hostname on agent nodes, open the /etc/puppetlabs/puppet/puppet.conf file, and change the server setting to a valid DNS name.
     - To reset the primary server's valid DNS names, log in as root (or the Administrator) and run:
```
puppet infrastructure run regenerate_primary_certificate --dns_alt_names=<COMMA-SEPARATED_LIST_OF_DNS_NAMES>
```
- The date and time must be in sync on the primary server and agent nodes.
- The date and time must be in sync when certificates are created.

# Troubleshooting the databases

## The PostgreSQL database takes up too much space
- The PostgreSQL autovacuum=on setting prevents the database from growing too large and unwieldy. Routine vacuuming is enabled by default.
  - Verify that autovacuum is set to on.

## PostgreSQL buffer memory causes installation to fail
- When installing PE on machines with large amounts of RAM, the PostgreSQL database might try to use more shared buffer memory than is available.
- On the primary server, set the shmmax kernel setting to approximately 50% of the total RAM.
- To get the value for the shmall kernel setting, divide the value of the shmmax setting by the page size. To confirm the page size, run: getconf PAGE_SIZE
- Set the new kernel settings by running:
```
sysctl -w kernel.shmmax=<your shmmax calculation>
sysctl -w kernel.shmall=<your shmall calculation>
```

## The PuppetDB default port conflicts with another service
- By default, PuppetDB communicates over port 8081. In some cases, this might conflict with other services, such as McAfee ePolicy Orchestrator.
- Install PuppetDB in text mode with the non-default port specified on the puppet_enterprise::puppetdb_port parameter in the pe.conf file.


# Troubleshooting backup and restore

## Take backup
```
puppet-backup create --dir=<BACKUP_DIRECTORY>
```

- The puppet-backup create command might fail if any gem installed on the Puppet Server isn't present on the agent environment on the primary server. If the gem is missing or has a different version on the primary server's agent environment, you get this error: command puppet infrastructure recover_configuration failed.

## Restore
- Install PE on the primary server you are restoring to.
- This must be the same PE version used to create the backup files.

```
sudo puppet-backup restore <BACKUP-FILENAME>
```

# Using PRY to Inspect the Puppet Server


