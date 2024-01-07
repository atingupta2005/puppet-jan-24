# Install Puppet Enterprise

- Refer:
  - https://puppet.com/try-puppet/puppet-enterprise/download/


## Ren below commands
```
cd ~
rm 02-install-pe.sh*
wget https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-1-2/01-installation/1-install-pe/02-install-pe.sh
chmod a+x 02-install-pe.sh
. ./02-install-pe.sh
```


```
curl localhost:80
```
## Log in to the PE console
- Credentials: admin/admin123
- Open the console by entering the URL <PRIMARY_HOSTNAME> into your browser. The hostname is your primary server's trusted certificate name.
- On the console login page, log in with the username admin and the password you created when installing. Keep track of this login because you'll need it later.
