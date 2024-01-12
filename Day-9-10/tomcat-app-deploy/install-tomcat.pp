include tomcat

tomcat::install { '/opt/tomcat':
  source_url => 'https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.18/bin/apache-tomcat-10.1.18.tar.gz',
}

tomcat::instance { 'default':
  catalina_home => '/opt/tomcat',
}


tomcat::service { 'tomcat':
  catalina_base => '/opt/tomcat',
}
