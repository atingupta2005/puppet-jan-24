# Node definitions
 - A block of Puppet code that is included only in matching nodes' catalogs.
 - This allows to assign specific configurations to specific nodes.
 - Put node definitions in the main manifest, which can be a single site.pp file, or a directory containing many files.

## Examples
```
# <ENVIRONMENTS DIRECTORY>/<ENVIRONMENT>/manifests/site.pp
node 'www1.example.com' {
  include common
  include apache
  include squid
}
node 'db1.example.com' {
  include common
  include mysql
}
```

```
node 'www1.example.com', 'www2.example.com', 'www3.example.com' {
  include common
  include apache, squid
}
```


```
node /^www\d+$/ {
  include common
}
```

```
node /^(one|two)\.example\.com$/ {
  include common
}
```

## Matching
- A given node gets the contents of only one node definition, even if multiple node definitions could match its name. 
- Puppet does the following checks, in this order, until it finds one that matches:
  - If there is a node definition with the node's exact name, Puppet uses it.
  - If there is a regular expression node definition that matches the node's name, Puppet uses it. 
  - If more than one regex node matches, Puppet uses one of them, but we can't predict which. 
    - Make your node definition name regexes non-overlapping to avoid this problem.
  - Puppet uses the default node.


### Note: If it doesn't find one, catalog compilation fails. It's a good idea to always have a default node definition.