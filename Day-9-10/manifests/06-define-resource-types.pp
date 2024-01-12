define create_user_group (
  String $user = "${title}",
  String $group,
  $status
) {
    $mygroup = "$group-$user"
    
    user {$user :
        ensure       => $status,
        groups       => $mygroup,
        require => Group[$mygroup],
    }

    group { $mygroup:
      ensure       => $status,
    }
    
    file { "/tmp/${user}-welcome.txt":
      content => "We welcome ${user} to the group ${mygroup}",
      ensure       => $status,
      require => User[$user],
    }
}


create_user_group {'sumit':
  group => 'development',
  status => present,
}

create_user_group {'ankit':
  group => 'development',
  status => present,
}
