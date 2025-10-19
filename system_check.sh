#!/bin/bash

# check disk space and alert

DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $DISK_USAGE -gt 80 ]; then
	echo "WARNING: current CPU consumption is above 80% $DISK_USAGE%"
elif [ $DISK_USAGE -gt 60 ]; then
	echo "CAUTION: current CPU consumption is above 60% $DISK_USAGE%"
else
	echo "CPU consumption is healthy at $DISK_USAGE%"
fi
