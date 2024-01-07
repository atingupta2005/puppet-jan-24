case $facts['os']['family'] {
  'windows': {
    $package_options = {
      'source' => 'https://dl.grafana.com/enterprise/release/grafana-enterprise-10.2.3.windows-amd64.msi'
    }
  }
  default:  {
    $package_options = {
      'source' => 'https://dl.grafana.com/enterprise/release/grafana-enterprise-8.4.3-1.x86_64.rpm'
    }
  }
}

package { 'grafana':
  * => $package_options
}
