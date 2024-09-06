#!/bin/bash

APP_HOME /dianyi/app/gorse
cd $APP_HOME
# set PROFILE by gears
./gorse-master -c config-$PROFILE.toml --log-path /dianyi/log/gorse/worker.log --cache-path /var/lib/gorse

