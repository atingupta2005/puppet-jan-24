class tomcat::install {
    
    include java
    
    package { [ 'tomcat', 'tomcat-webapps' ]:
      ensure   => installed, 
      require  => Package['epel-release']
    }

}
