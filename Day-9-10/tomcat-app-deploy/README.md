# Custom Application orchestration using Puppet
- The tomcat module lets you use Puppet to install, deploy, and configure Tomcat web services.
  - https://forge.puppet.com/modules/puppetlabs/tomcat/readme#overview

## Requirements
- The tomcat module requires puppetlabs-stdlib version 4.0 or newer. On Puppet Enterprise you must meet this requirement before installing the module. To update stdlib, run:
```
puppet module upgrade puppetlabs-stdlib
```

## Install the Tomcat source and start the service
```
tomcat::install { '/opt/tomcat':
  source_url => 'https://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.x/bin/apache-tomcat-8.0.x.tar.gz',
}
tomcat::instance { 'default':
  catalina_home => '/opt/tomcat',
}
```

## Deploy WAR Files
```
tomcat::war { 'sample.war':
  catalina_base => '/opt/tomcat9/first',
  war_source    => '/opt/tomcat9/webapps/docs/appdev/sample/sample.war',
}
```

