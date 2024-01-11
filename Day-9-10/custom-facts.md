## Custom Facts
- Facter facts are defined in Ruby files that are distributed with Facter. 
- Puppet can add additional facts to Facter by creating files within the lib/facter subdirectory of a module.
- These files are then transferred to client nodes

## Creating custom facts
### Move into the nginx module directory:
```
mkdir /etc/puppetlabs/code/environments/production/modules/nginx/
cd /etc/puppetlabs/code/environments/production/modules/nginx/
```

### Create the plugin library location for Facter:
```
sudo mkdir -p lib/facter
```

### Create and open a file called web.rb in the plugin location:
```
sudo vim lib/facter/web.rb
```

### At its most basic, if we wanted to write a single, non-structured fact that output our web server information, we could write something like:
```
Facter.add(:web) do
  setcode do
    'Nginx'
  end
end
```

### Notice: How this includes the Facter.add line to set our fact name, and the setcode statement, which provides us our output. 


## More Examples
### Returns the number of users currently logged in to the system:
```
Facter.add(:users) do
  setcode do
    %x{/usr/bin/who |wc -l}.chomp
  end
end
```

### Returns the value of the HOME environment value as a fact called home
```
Facter.add("home") do
  setcode do
    ENV['HOME']
  end
end
```

### Return the time zone of a Debian host.
```
Facter.add("tzname") do
  confine :osfamily => :debian
  setcode do
    File.readlines("/etc/timezone").to_a.last
  end
end
```

```
sudo puppet agent -t
facter -p web
facter -p users
facter -p home
facter -p tzname
```