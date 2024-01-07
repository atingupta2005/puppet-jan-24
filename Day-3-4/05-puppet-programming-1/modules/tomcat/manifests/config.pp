class tomcat::config {

  file { '/etc/tomcat/tomcat.conf':
    source    => 'puppet:///modules/tomcat/tomcat.conf',
    owner    => 'tomcat', 
    group    => 'tomcat', 
    mode     => '0644',
    notify   => Service['tomcat'] 
  }
}
