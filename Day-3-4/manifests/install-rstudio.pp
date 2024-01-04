include wget

package { [ 'r-base', 'openssl', 'zip', 'tree', 'wget', 'unzip', 'gdebi-core', 'install r-base', ]: 
	ensure => installed,
	before => Exec['apt update'],
}

package {'rstudio':
  provider => dpkg,
  ensure => installed,
  before => Exec['apt update'],
  source   => https://download2.rstudio.org/server/focal/amd64/rstudio-server-2023.12.0-369-amd64.deb,
}
