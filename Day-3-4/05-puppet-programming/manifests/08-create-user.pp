user {"deploy" :
    ensure       => present, 
    uid          => 5001, 
    password     => '$1$WD98.uaZ$cxx30x/K3FXQrljxsvBIu/',
    home         => '/home/deploy', 
    managehome   => true, 
}
