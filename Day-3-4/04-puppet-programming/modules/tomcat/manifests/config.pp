class tomcat::config {

  file { '/etc/tomcat9/server.xml':
    source    => 'puppet:///modules/tomcat/server.xml',
    owner    => 'tomcat', 
    group    => 'tomcat', 
    mode     => '0644',
    notify   => Service['tomcat']
  }
}
