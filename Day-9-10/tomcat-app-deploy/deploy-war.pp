include tomcat

tomcat::war { 'sample.war':
  catalina_base => '/opt/tomcat9/first',
  war_source    => '/opt/tomcat9/webapps/docs/appdev/sample/sample.war',
}
