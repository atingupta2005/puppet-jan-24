include tomcat

class { 'java': }

tomcat::install { '/opt/tomcat':
  source_url => 'https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.18/bin/apache-tomcat-10.1.18.tar.gz',
}
tomcat::instance { 'default':
  catalina_home => '/opt/tomcat',
}

# Change the default port of the second instance server and HTTP connector
tomcat::config::server { 'tomcat':
  catalina_home => '/opt/tomcat',
  port          => '9797',
  address       => '0.0.0.0',
  protocol      => 'HTTP/1.1',
}

tomcat::config::server::tomcat_users {
  'mycat-user-admin':
    ensure        => present,
    catalina_base => '/opt/tomcat',
    element       => 'user',
    element_name  => 'admin',
    password      => 'admin',
    roles         => ['manager-gui'];
}
