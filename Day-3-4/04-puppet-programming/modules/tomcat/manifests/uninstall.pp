class tomcat::uninstall {
    
    package { [ 'tomcat9', ]:
      ensure   => absent,
    }

}
