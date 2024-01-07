file { 'c:\www':
  ensure       => 'directory',
}


file { 'c:\page.html':
  ensure       => 'file',
  content      => 'Atin Gupta',
}


file { 'c:\www\page2.html':
  ensure       => 'file',
  source       => 'c:\page.html',
}

