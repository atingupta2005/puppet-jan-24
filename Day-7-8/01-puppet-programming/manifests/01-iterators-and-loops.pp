include stdlib

$users = {
  'Atin Gupta' => present,
  'Amit Mittal' => absent,
  'Sumit Agarwal' => present, 
  'Amita Mittal' => absent,
  'Rajeev Chauhan' => absent,
  'Gaurav Mittal' => absent,
  'Sumit Gupta' => absent,
  'Manish Roy' => absent,
  'Ankit Gupta' => absent,
  }

## Generate password using below command on linux terminal
## openssl passwd -1
### Note above command generates seperate hash each time for the same input

# Below password is - Pass@4568
$user_password = Sensitive('$1$UnAxMplD$yib2Gl9fmHSshC/rAWaoX1')
#$user_password = '$1$Jd1PmCqX$Fa1YJkGvVHAHPaKaRjnAB0'

$users.each |$username, $status| {
    $username_downcase = $username.downcase()
    $username_clean = regsubst($username_downcase, '\s+', '')
    
    notice("Working on User - $username after cleaning $username_clean")

    if "atin" in $username_clean{ 
      notice("Skipping User - $username")
      next()
    }

    if $status == present {
      notice("Creating User - $username")
    }
    else {
      notice("Deleting User - $username")
    }

    user {$username_clean :
        ensure       => $status,
        password     => $user_password,
        home         => "/home/$username_clean",
        managehome   => true,
        comment      => $username,
    }


    if "manish" in $username_clean { 
      notice("Breaking at user $username")
      break()
    }

}
