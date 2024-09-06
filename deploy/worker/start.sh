#!/bin/bash

# set PROFILE by gears
./gorse-worker --master-host gorse-master --master-port 8086 --http-host 0.0.0.0 --log-path /dianyi/log/gorse/worker.log --cache-path /var/lib/gorse

