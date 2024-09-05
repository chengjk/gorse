#!/bin/bash

APP_HOME /dianyi/app/gorse
cd $APP_HOME
# set PROFILE by gears
./gorse-master -c gorse-rec/deploy/config-$PROFILE.toml --log-path /var/log/gorse/master.log --cache-path /var/lib/gorse

