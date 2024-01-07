file { '/tmp/1/':
  ensure  => 'directory',
}



file { '/tmp/1/file.txt':
  ensure       => 'file',
  content      => 'Atin Gupta',
}


file { '/tmp/1/myfile.txt':
  ensure       => 'file',
  source       => '/tmp/1/file.txt',
  owner        => 'root',
  group        => 'root',
  mode         => '0660'
}

