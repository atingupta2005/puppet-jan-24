package { 'httpd':}

service { 'httpd':
  ensure  => 'running',
  enable  => 'true',
  require => Package['httpd']
}

file { '/var/www/html/index.html ':
  ensure  => 'file',
  content => '<html>\n<head>\n</head>\n<body>\n  <h1>Hello World<h1>\n</body>\n</html>',
  notify  => Service['httpd'],
  require => Package['httpd']
}

file { '/etc/httpd/conf/httpd.conf':
  ensure       => 'file',
  source       => 'https://raw.githubusercontent.com/atingupta2005/puppet-jan-24/main/Day-5-6/02-puppet-programming/httpd.conf',
  notify       => Service['httpd'],
  require      => Package['httpd'],
}
