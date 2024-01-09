class nginx::config {

  file { '/etc/nginx/sites-enabled/default':
    content => epp('nginx/default.epp', {'listen_port' => '8484 '}),
    notify   => Service['nginx']
  }
}

