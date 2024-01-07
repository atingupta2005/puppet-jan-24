file { 'c:\inetpub\wwwroot':
  ensure       => 'directory',
  recurse      => true,
  purge        => true,
  recurselimit => '1'
}


file { 'c:\page.html':
  ensure       => 'file',
  content      => 'Atin Gupta',
}


file { 'c:\inetpub\wwwroot\page':
  ensure       => 'file',
  source       => 'c:\page.html',
}

