file { '/opt/tomcat/webapps/helloworld.war':
  ensure  => file,
  source  => 'https://github.com/aeimer/java-example-helloworld-war/raw/master/dist/helloworld.war'
}
