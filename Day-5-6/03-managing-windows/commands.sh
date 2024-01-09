# Puppet Programming
## Clone GIT Repo
cd ~
rm  ~/puppet-jan-24
git clone https://github.com/atingupta2005/puppet-jan-24/

cd ~/puppet-jan-24/Day-5-6/03-managing-windows

puppet module install puppetlabs/windows
puppet module install puppetlabs/registry
puppet module install puppetlabs-chocolatey 

puppet parser validate 01-install-choco.pp

puppet apply 01-install-choco.pp
puppet module upgrade puppetlabs-chocolatey --force
puppet apply 02-chocolatey-notepadplusplus.pp
puppet apply 03-service-defragsvc.pp
puppet apply 04-delete-files-scheduled.pp
puppet apply 05-create-user.pp
puppet apply 06-Windows-simple-manifest.pp
puppet apply 07-windows-facts.pp
puppet apply 08-windows-feature-several.pp
puppet apply 09-scheduled-tasks-1.pp
puppet apply 10-scheduled-tasks-2.pp
puppet apply 11-scheduled-tasks-3.pp
puppet apply 12-scheduled-tasks-4.pp
puppet apply 13-scheduled-tasks-5.pp
puppet apply 14-windows_env.pp