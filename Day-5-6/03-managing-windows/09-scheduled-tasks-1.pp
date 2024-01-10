scheduled_task { 'Disk Cleanup':
<<<<<<< HEAD
  command   => "$::system32\\WindowsPowerShell\\v1.0\\powershell.exe",
  arguments => '-File "C:\\hello-script.ps1"',
=======
  command   => "powershell.exe",
  arguments => '-File "C:\\Scripts\\Clear-DiskSpace.ps1"',
>>>>>>> bc3bb795d9a1e643390cbbdd23afc0ace6866a4b
  enabled   => 'true',
  trigger   => [{
    schedule   => 'once',
    start_time => '23:20',
    start_date => '2018-01-01'
  }],
}
