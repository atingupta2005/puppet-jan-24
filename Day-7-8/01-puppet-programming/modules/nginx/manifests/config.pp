class nginx::config (
  String $listen_port,
  String $notify_service,
  String $config_file_path
) {

  file { $config_file_path:
    content => epp('nginx/default.epp', {'listen_port' => "$listen_port  "}),
    notify   => Service[$notify_service]
  }
}

