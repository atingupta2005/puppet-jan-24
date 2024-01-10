class nginx::uninstall {
    
    package { [ 'nginx', ]:
      ensure   => absent,
    }

}
