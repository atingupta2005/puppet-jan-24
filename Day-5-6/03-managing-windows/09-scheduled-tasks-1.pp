scheduled_task { 'Disk Cleanup':
  command   => "C:\\Windows\System32\\WindowsPowerShell\\v1.0\\powershell.exe",
  arguments => '-File "C:\\hello-script.ps1"',
  enabled   => 'true',
  trigger   => [{
    schedule   => 'once',
    start_time => '23:20',
    start_date => '2023-01-01'
  }],
}
