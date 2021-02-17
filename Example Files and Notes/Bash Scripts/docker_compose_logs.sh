#!/usr/bin/env bash
# Make sure you run this beforehand to enable execution "chmod +x dockerlogs.sh"
# Usage: 
#   - "./dockerlogs.sh uniquestring"
#   - The "uniquestring" must be a completely unique part of the docker ps output else the "logs -f" command will fail

readonly dockerProcesses=`docker ps`
readonly containerId=$(echo "$dockerProcesses" | grep $1 | awk '{print $1}')

if [ ! -z "$containerId" ] ; then
   docker logs -f $containerId
fi
