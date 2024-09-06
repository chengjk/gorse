#!/bin/bash

APP_HOME /dianyi/app/gorse
cd $APP_HOME
# set PROFILE by gears
./gorse-worker --master-host gorse-master --http-host 0.0.0.0 --log-path /dianyi/log/gorse/worker.log --cache-path /var/lib/gorse

