class tomcat::service {

  service { 'tomcat9':
    ensure => running,
    enable => true,
  }    

}

