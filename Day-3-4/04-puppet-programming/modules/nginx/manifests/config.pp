class nginx::config {

  file { '/etc/nginx/sites-enabled/default':
    content => epp('tomcat/default.epp', {'listen_port' => '8282'}),
    notify   => Service['nginx']
  }
}

