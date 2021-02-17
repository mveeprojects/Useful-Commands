#!/usr/bin/env bash
# Make sure you run this beforehand to enable execution "chmod +x dockerlogs.sh"
# Usage: "./dockerlogs.sh uniquestring"
#   - The "uniquestring" must be a completely unique part of the docker ps output else the "logs -f" command will fail

readonly dockerProcesses=`docker ps`
readonly containerId=$(echo "$dockerProcesses" | grep $1 | awk '{print $1}')

if [ ! -z "$containerId" ] ; then
   docker logs -f $containerId
fi

# This can also be added as a function to the bash_profile/bash_rc
# Usage: "dclog uniquestring"
#
# dclog(){
#   unset dockerProcesses
#   unset containerId
#   export dockerProcesses=`docker ps`
#   export containerId=$(echo "$dockerProcesses" | grep $1 | awk '{print $1}')
#   if [ ! -z "$containerId" ] ; then
#     docker logs -f $containerId
#   fi
# }
