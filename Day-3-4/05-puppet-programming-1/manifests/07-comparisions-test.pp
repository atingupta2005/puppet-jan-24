if $facts['system_uptime']['seconds'] <= 1500 {
  notify { "I'm using a value ${facts['system_uptime']['seconds']}": }
}


