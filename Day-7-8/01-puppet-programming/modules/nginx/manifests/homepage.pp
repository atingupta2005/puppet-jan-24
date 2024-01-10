class nginx::homepage(
  String $file_path,
  String $h1_message
) {

  file { $file_path:
    content => epp('nginx/index.nginx-debian.html.epp', {'h1_message' => $h1_message}),
  }
}

