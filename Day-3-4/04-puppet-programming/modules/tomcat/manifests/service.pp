class tomcat::service {

  service { 'tomcat':
    ensure => running,
    enabled => true,
  }    

}

