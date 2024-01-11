class nginx::install(
  String $package_name,
  String $package_status
) {
    package { [ $package_name, ]:
      ensure   => $package_status,
    }

}
