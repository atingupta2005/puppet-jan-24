class tomcat::install {
    
    include java
    
    package { [ 'tomcat9' ]:
      ensure   => installed,
    }

}
