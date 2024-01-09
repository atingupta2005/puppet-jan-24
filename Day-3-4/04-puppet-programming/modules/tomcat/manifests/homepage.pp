class tomcat::homepage {

  file { '/var/lib/tomcat9/webapps/ROOT/index.html':
    content => epp('tomcat/index.html.epp', {'h1_message' => 'Hi Team, It works after customizations !'}),
  }
}

