#!/usr/bin/env bash

readonly imageName="scalacassandra:"
readonly dockerProcesses=`docker ps`
readonly containerId=$(echo "$dockerProcesses" | grep $imageName | awk '{print $1}')

if [ ! -z "$containerId" ] ; then
   docker logs -f $containerId
fi
