define create_user_group (
  String user = "${title}",
  String group
) {
    user {$user :
        ensure       => present,
        home         => "/home/$username",
        managehome   => true,
        groups       => ${group},
        require => Group[${group}],
    }

    group { ${group}: }
      ensure  => 'present',
    }
    
    file { '/home/${user}/welcome.txt':
      user => ${user},
      group => ${group},
      content => "We welcome ${user} to the group ${group}",
    }
}


create_user_group {'sumit':
  group => 'development',
}

create_user_group {'Ankit':
  group => 'development',
}
