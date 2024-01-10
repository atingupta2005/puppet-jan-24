include stdlib

## Generate password using below command on linux terminal
## openssl passwd -1
### Note above command generates seperate hash each time for the same input

# Below password is - Pass@4568
$user_password = Sensitive('$1$UnAxMplD$yib2Gl9fmHSshC/rAWaoX1')
#$user_password = '$1$Jd1PmCqX$Fa1YJkGvVHAHPaKaRjnAB0'

$start_int=1
$end_int=5

range("$start_int", "$end_int").each |$number| { 
    $username = "sampleuserr-$number"
    notice($username)
    user {$username :
        ensure       => present,
        password     => $user_password,
        home         => "/home/$username",
        managehome   => true,
    }
}

$users = ['sampleuser-1', 'sampleuser-2']

$users.each |$username| {
    notice($username)
    user {$username :
        ensure       => present,
        password     => $user_password,
        home         => "/home/$username",
        managehome   => true,
    }
}

notify { "user_password ${user_password}":}
