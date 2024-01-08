# Puppet Programming

## Clone GIT Repo
```
cd ~
rm -rf ~/puppet-jan-24
git clone https://github.com/atingupta2005/puppet-jan-24/
```

## Run Various Manifests
cd ~/puppet-jan-24/zz-misc-examples

puppet apply 1-facts/using_facts_hash.pp
puppet apply 2-files_and_directories/add_file_if_absent.pp
puppet apply 2-files_and_directories/directory.pp
puppet apply 2-files_and_directories/extract_file.pp
puppet apply 2-files_and_directories/file_based_on_fact.pp
puppet apply 2-files_and_directories/manage_ini_files.pp
puppet apply 2-files_and_directories/remove_files.pp
puppet apply 2-files_and_directories/restart_service_if_file_changes.pp
puppet apply 2-files_and_directories/template_based_on_fact.pp
puppet apply 3-host_file/add_host_entry.pp
puppet apply 3-host_file/add_per_domain_host.pp
puppet apply 3-host_file/remove_host_entry.pp
puppet apply 3-host_file/remove_unmanaged.pp
puppet apply 4-log_rotate/log_rotate.pp
puppet apply 5-packages/apt_repo.pp
puppet apply 5-packages/chocolatey_configure_source.pp
puppet apply 5-packages/chocolatey_install.pp
puppet apply 5-packages/global_yum_config.pp
puppet apply 5-packages/installing_multiple_packages.pp
puppet apply 5-packages/install_chocolatey_package.pp
puppet apply 5-packages/install_chocolatey_package_with_options.pp
puppet apply 5-packages/install_package.pp
puppet apply 5-packages/install_package_per_distro.pp
puppet apply 5-packages/install_package_windows.pp
puppet apply 5-packages/install_pip_package.pp
puppet apply 5-packages/install_ruby_gem.pp
puppet apply 5-packages/package_latest.pp
puppet apply 5-packages/package_with_custom_opts.pp
puppet apply 5-packages/remove_package.pp
puppet apply 5-packages/yum_group_install.pp
puppet apply 5-packages/yum_repo.pp
puppet apply 5-packages/zypper_repo.pp
puppet apply 6-selinux/enable.pp
puppet apply 7-services/disabled_at_boot.pp
puppet apply 7-services/ensure_running.pp
puppet apply 7-services/ensure_stopped.pp
puppet apply 7-services/restart_when_file_changes.pp
puppet apply 7-services/running_at_boot.pp
puppet apply 8-sys_ctl/delete_entry.pp
puppet apply 8-sys_ctl/manage_entry.pp
puppet apply 9-users and groups/add_user.pp
puppet apply 9-users and groups/create_group.pp
puppet apply 9-users and groups/expire_user_passwords.pp
puppet apply 9-users and groups/remove_group.pp
puppet apply 9-users and groups/remove_user.pp
puppet apply 10-limits/add_limit.pp
puppet apply 10-limits/purge_limits.pp
