user {
  ['exampleappdev','exampleapptest','exampleappprod']:
  gid => 'exampleapp'
}

group { 'exampleapp':
  ensure => 'present'
}
