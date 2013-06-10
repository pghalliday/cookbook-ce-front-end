cookbook-ce-front-end
=====================

Chef cookbook to install and start a ce-front-end instance

## Depends

- nodejs
- git
- zeromq (https://github.com/pghalliday/cookbook-zeromq.git)

## Attributes

Attributes are specified under the `ce_front_end` keyspace.

- `node[:ce_front_end][:repository]` - the Git repository to install ce-front-end from (defaults to "https://github.com/pghalliday/ce-front-end.git")
- `node[:ce_front_end][:destination]` - the directory to install ce-front-end to (defaults to "/opt/ce-front-end")
- `node[:ce_front_end][:user]` - the user to install and start ce-front-end as (defaults to "ce-front-end")
- `node[:ce_front_end][:port]` - the port to for the ce-front-end server to listen on (defaults to "3000")

## Recipes

### default

- Installs ce-front-end to the given directory
- Runs npm install to get dependencies
- Runs npm start to start the ce-front-end

## License
Copyright (c) 2013 Peter Halliday  
Licensed under the MIT license.
