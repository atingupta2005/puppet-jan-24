$mypackages = ['r-base', 'openssl', 'zip', 'tree', 'wget', 'unzip', 'gdebi-core', 'libclang-dev']

package { $mypackages: 
	ensure => latest,
}

file { '/tmp/rstudio-server-2023.12.0-369-amd64.deb':
  source => [
    "https://download2.rstudio.org/server/focal/amd64/rstudio-server-2023.12.0-369-amd64.deb",
  ]
}

package {'rstudio':
  provider => dpkg,
  ensure => installed,
  source   => '/tmp/rstudio-server-2023.12.0-369-amd64.deb',
}
