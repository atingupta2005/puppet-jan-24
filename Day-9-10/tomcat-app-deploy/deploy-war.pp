include tomcat

tomcat::war { 'helloworld.war':
  catalina_base => '/opt/tomcat/helloworld',
  war_source    => 'https://github.com/aeimer/java-example-helloworld-war/raw/master/dist/helloworld.war',
}
