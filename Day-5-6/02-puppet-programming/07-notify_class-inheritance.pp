class common {
    notify { 'this is the common': }

    exec { 'apt-update':
        command => '/usr/bin/apt-get update',
    }
    
}

class my_notification  inherits common {
    notify { 'this is the my_notification': }

    package { 'tree':
        require => Exec['apt-update'],
        ensure  => installed,
    }
}

class { 'my_notification': }
