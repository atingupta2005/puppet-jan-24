if $::timezone == 'UTC' {
  notify { 'Universal Time Coordinated': }
} elsif $::timezone == 'GMT' {
  notify { 'Greenwich Mean Time': }
} else {
  notify { "$::timezone is not UTC": }
}

