# Variable name and value are extracted from title, splitting on '='.
# Default 'insert' mergemode is selected and default 'present' ensure is selected,
# so this will add 'C:\code\bin' to PATH, merging it neatly with existing content.
windows_env { 'PATH=C:\code\bin': }

# Title doesn't set parameters (because both 'variable' and 'value' have
# been supplied manually).
# This will create a new environment variable 'MyVariable' and set its value to 'stuff'.
# If the variable already exists, its value will be replaced with 'stuff'.
windows_env {'random_title':
  ensure    => present,
  variable  => 'MyVariable',
  value     => 'stuff',
  mergemode => clobber,
}

# Create an environment variable for 'Administrator':
windows_env { 'KOOLVAR':
  value => 'hi',
  user  => 'azureuser',
}

