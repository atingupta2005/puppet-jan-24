include tomcat

tomcat::install { '/opt/tomcat':
  source_url => 'https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.98/bin/apache-tomcat-8.5.98.tar.gz',
}
tomcat::instance { 'default':
  catalina_home => '/opt/tomcat',
}
