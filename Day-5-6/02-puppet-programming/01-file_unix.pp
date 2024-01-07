file { '/tmp/1/2/':
  ensure  => 'directory',
  recurse => true,
  purge   => true,
}

file { '/tmp/1/2/myfile.txt':
  ensure       => 'file',
  content      => 'Atin Gupta',
  owner        => 'root',
  group        => 'root',
  mode         => '0660'
}

