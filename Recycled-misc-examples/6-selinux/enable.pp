# REQUIRES https://forge.puppet.com/modules/puppet/selinux
class { selinux:
  mode => 'permissive',
  type => 'targeted',
}
