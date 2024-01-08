# requires https://forge.puppet.com/modules/puppetlabs/chocolatey

  # Chocolatey must be installed first before using it as a providor with the package resource.

  # Basic install
  package { 'notepadplusplus':
    ensure   => installed,
    provider => 'chocolatey',
  }
