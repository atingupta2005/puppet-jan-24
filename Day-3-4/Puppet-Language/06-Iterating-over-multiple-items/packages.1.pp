$packages = [
  'tree', 'nano',
  'vim'
]
package { $packages: ensure => installed }
