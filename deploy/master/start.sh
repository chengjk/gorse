#!/bin/bash

# set PROFILE by gears
./gorse-master -c config-$PROFILE.toml --log-path /dianyi/log/gorse/master.log --cache-path /var/lib/gorse

