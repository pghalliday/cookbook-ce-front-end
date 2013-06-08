cookbook-ce-front-end
=====================

Chef cookbook to install and start a ce-front-end instance

## Depends

- nodejs
- git
- zeromq (https://github.com/pghalliday/cookbook-zeromq.git)

## Attributes

Attributes are specified under the `ce_front_end` keyspace.

- `node[:ce_front_end][:installDirectory]` - the directory to install ce-front-end to (defaults to "/opt/ce-front-end")

## Recipes

### default

- Installs ce-front-end to the given directory
- Runs npm install to get dependencies
- Runs npm start to start the ce-front-end

## License
Copyright (c) 2013 Peter Halliday  
Licensed under the MIT license.
