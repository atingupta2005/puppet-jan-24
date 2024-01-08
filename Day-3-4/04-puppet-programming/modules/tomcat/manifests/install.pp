class tomcat::install {
    
    include java
    
    package { [ 'tomcat9', 'tomcat9-common', 'tomcat9-docs', 'tomcat9-examples', 'tomcat9-admin', 'tomcat9-user' ]:
      ensure   => installed,
    }

}
