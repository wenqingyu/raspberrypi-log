#!/bin/bash
# Github Branch

# set the work directory to script's directory
cd "$(dirname "$0")"

time=`date '+%Y-%m-%d %H:%M:%S'`;
IP="$(hostname -I)"
echo $IP
git checkout master

# update heartbeat log
echo "$time, $IP" >> heartbeatLog.csv

git add .

git commit -m "Updated By: $time - $IP"

git push