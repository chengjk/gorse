#!/bin/bash

APP_HOME /dianyi/app/gorse
cd $APP_HOME
# set PROFILE by gears
./gorse-server --master-host gorse-master --master-port 8086 --http-host 0.0.0.0 --log-path /dianyi/log/gorse/server.log --cache-path /var/lib/gorse

