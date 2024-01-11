### At its most basic, if we wanted to write a single, non-structured fact that output our web server information, we could write something like:
Facter.add(:web) do
  setcode do
    'Nginx'
  end
end

### Returns the number of users currently logged in to the system:
Facter.add(:users) do
  setcode do
    %x{/usr/bin/who |wc -l}.chomp
  end
end

### Returns the value of the HOME environment value as a fact called home
Facter.add("home") do
  setcode do
    ENV['HOME']
  end
end

### Return the time zone of a Debian host.
Facter.add("tzname") do
  confine :osfamily => :debian
  setcode do
    File.readlines("/etc/timezone").to_a.last
  end
end
