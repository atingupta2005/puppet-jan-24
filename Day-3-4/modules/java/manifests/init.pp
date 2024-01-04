class java {

  package { [ 'epel-release', 'openjdk-8-jdk'] : 
    ensure => installed,
  }

}
