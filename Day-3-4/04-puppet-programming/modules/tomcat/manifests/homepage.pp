class tomcat::homepage {

  file { '/var/lib/tomcat9/webapps/ROOT/index.html':
    source    => 'puppet:///modules/tomcat/index.html',
    owner    => 'root', 
    group    => 'root', 
    mode     => '0644',
  }
}
