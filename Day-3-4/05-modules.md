# Generating Modules
## Change into the directory for production env

```
cd /etc/puppetlabs/code/environments/production/modules
```

## Using puppet module command, generate the scaffolding for java and tomcat modules

```
puppet module generate user-java
```

```
puppet module generate --skip-interview  user-tomcat
```

## Writing classes
### file: modules/java/manifests/init.pp
```
class java {

  package { [ 'epel-release', 'java-1.7.0-openjdk'] : 
    ensure => installed,
  }

}
```

## Node Definitions - Applying the code
- To apply the default class from java module, create a node definition
   - create file: environments/production/manifests/app.pp

### add the node definition
```
node 'node1' {

   include java

}
```

### To apply run puppet agent
```
puppet agent -t 
```


## Writing the class to install tomcat
- file: modules/tomcat/manifests/install.pp

```
class tomcat::install {
    
    include java
    
    package { [ 'tomcat', 'tomcat-webapps' ]:
      ensure   => installed, 
      require  => Package['epel-release']
    }

}
```


### Add tomcat::install to node definition for node1 which should now look like
```
node 'node1' {

   include java
   include tomcat::install

}
```

### Apply on node1 by running puppet agent
```
puppet agent -t 
```

## Nano Project
- Now that you have learnt how to write a manifest and apply, and have gone through the class naming conventions, you have been tasked to create the following classe with the specifications as give below,

   - class : tomcat::service resource : service name : tomcat ensure : running enable : true

   - service resource should have a dependency on install class

- apply it to node1 by updating the node definition. Validate by visiting the IP address of the server and port 8081.

- Note : Tomcat may take up to 10mins to come up for the first time

## Simplify Run List
 - file: modules/tomcat/manifests/init.pp

```
class tomcat {

  include tomcat::install
  include tomcat::service 

}
```

- And production/manifests/app.pp

```
node 'node1' {

  include tomcat
  
}
```

## Managing Files
### Create file

- create directory to hold files : modules/tomcat/files
- create a file modules/tomcat/files/tomcat.conf

- Create a class tomcat::config to copy this file to destinition
```
class tomcat::config {

  file { '/etc/tomcat/tomcat.conf':
    source    => 'puppet:///modules/tomcat/tomcat.conf',
    owner    => 'tomcat', 
    group    => 'tomcat', 
    mode     => '0644',
    notify   => Service['tomcat'] 
  }

}
```

- Call it from tomcat class (init.pp)
```
class tomcat {

  include tomcat::install
  include tomcat::config
  include tomcat::service 
}
```

- Apply it


