class tomcat::config {

  file { '/etc/tomcat9/server.xml':
    content => epp('tomcat/server.xml.epp', {'connector_port' => '8282', 'connector_address' => '0.0.0.0'}),
    notify   => Service['tomcat9']
  }
}

