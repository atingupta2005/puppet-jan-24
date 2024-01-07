# About Heira
- Hiera is a built-in key-value configuration data lookup system, used for separating data from Puppet code.

- Puppet uses Hiera to do two things:
  - Store the configuration data in key-value pairs
  - Look up what data a particular module needs for a given node during catalog compilation

- Hiera’s hierarchical lookups follow a “defaults, with overrides” pattern

## Hiera hierarchies
- Hierarchies are configured in a hiera.yaml configuration file

# Getting started with Hiera
## Create a hiera.yaml config file
- The Hiera config file is called hiera.yaml
- Each environment should have its own hiera.yaml file.
- In the main directory of one of your environments, create a new file called hiera.yaml
- Paste the following contents into it:
```
# <ENVIRONMENT>/hiera.yaml
---
version: 5
hierarchy:
  - name: "Per-node data"                   # Human-readable name.
    path: "nodes/%{trusted.certname}.yaml"  # File path, relative to datadir.
                                   # ^^^ IMPORTANT: include the file extension!
  - name: "Per-OS defaults"
    path: "os/%{facts.os.family}.yaml"

  - name: "Common data"
    path: "common.yaml"
```

## The hierarchy
- The hiera.yaml file configures a hierarchy: an ordered list of data sources.
- Hiera searches these data sources in the order they are written
