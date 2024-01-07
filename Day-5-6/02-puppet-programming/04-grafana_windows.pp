package { 'grafana':
  source => 'https://dl.grafana.com/enterprise/release/grafana-enterprise-10.2.3.windows-amd64.msi'
}
service { 'grafana':
  ensure       => 'running',
  enable       => 'true',
  logonaccount => 'LocalSystem',
  require      => Package['grafana']
}
