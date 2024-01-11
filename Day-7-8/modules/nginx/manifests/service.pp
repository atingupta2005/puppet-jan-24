class nginx::service (
  String $package_name
)
{

  service { $package_name:
    ensure => running,
    enable => true,
  }    

}

