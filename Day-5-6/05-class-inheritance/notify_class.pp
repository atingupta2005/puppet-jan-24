class 'common' {
    class { 'ssh:server':
        permit_root_login => no,
    }

    notify { 'this is the common': }
}

class my_notification  inherits 'common' {
    notify { 'this is the my_notification': }
}

class { 'my_notification': }
