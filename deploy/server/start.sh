#!/bin/bash

APP_HOME /dianyi/app/gorse
cd $APP_HOME
# set PROFILE by gears
./gorse-server -c config-$PROFILE.toml --log-path /dianyi/log/gorse/server.log --cache-path /var/lib/gorse

