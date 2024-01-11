# How nodes are counted
- Your node count is the number of nodes in your inventory
- Your license limits you to a certain number of active nodes before you hit your bursting limit
- If you hit your bursting limit on four days during a month, you must purchase a license for more nodes or remove some nodes from your inventory.

#### Note: 
 - Node in this context includes agent nodes, agentless nodes, primary servers, compilers, nodes running in noop mode, and nodes that have been purged but had prior activity within the same calendar month.

## Nodes included in the node count
### The following nodes are included in your node count:
 - Nodes with a report in PuppetDB during the calendar month.
 - Nodes that have executed a Puppet run, task, or plan in the orchestrator, even if they do not have a report during the calendar month.

## Nodes not included in the node count 
### The following nodes are not included in your node count:
 - Nodes that are in the inventory service but are not used with Puppet runs, tasks, or plans.
 - Nodes that have been purged and have no reports or activity within the calendar month.

## Reaching the bursting limit
- When you go above your node license's count limit, you enter what is called the bursting limit
- The bursting limit lets you to exceed the number of nodes allowed under your license and enter a new threshold without extra charge. 
- You are allowed to use your bursting limit on four consecutive or non-consecutive days per calendar month. 
- Any higher usage beyond the four days will require you to either purge nodes or buy a license for more nodes.

## When nodes are counted 
- PE tracks node counts daily from 12:00 midnight UTC to 12:00 midnight UTC.

## Viewing your node count
- View your daily node count in the console by navigating to the License page and scrolling to the Calendar month usage section
- This section also contains information about your subscription expiration date and license warnings, such as your license being expired or out of compliance.

- To see daily node usage information on the command line, use the Usage endpoints.

## Removing nodes
- If you have unused nodes cluttering your inventory and are concerned about reaching your limit, read about removing them in Adding and removing agent nodes and Adding and removing agentless nodes.

