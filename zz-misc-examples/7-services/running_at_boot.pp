# Ensure running and enabled at boot 
    service { 'W32Time':
    ensure => 'running',
    enable => true,
  }
