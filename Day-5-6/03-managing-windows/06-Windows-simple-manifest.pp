file { 'c:/myfile.txt':
  ensure   => present,
  content  => 'This is some text in my file'
}
