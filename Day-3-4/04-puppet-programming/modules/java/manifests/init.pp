class java {

  package { [ 'openjdk-17-jdk', 'openjdk-17-jre'] : 
    ensure => installed,
  }

}
