scheduled_task { 'Disk Cleanup Nightly':
  command   => "C:\\Windows\System32\\WindowsPowerShell\\v1.0\\powershell.exe",
  arguments => '-File "C:\\hello-script.ps1"',
  enabled   => 'true',
  trigger   => [{
    schedule   => 'daily',
    start_time => '23:20'
  }],
}
