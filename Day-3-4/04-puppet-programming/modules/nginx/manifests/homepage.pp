class nginx::homepage {

  file { '/var/www/html/index.nginx-debian.html':
    content => epp('nginx/index.nginx-debian.html.epp', {'h1_message' => 'Hi Team, It works after customizations !'}),
  }
}

