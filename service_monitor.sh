#!/bin/bash

# monitor health of docker service

SERVICE_NAME=docker

if systemctl is-active --quiet SERVICE_NAME; then
	echo "$SERVICE_NAME is running"
else
	echo "$SERVICE_NAME is not running"
	echo "attempting to start $SERVICE_NAME..."
	sudo systemctl start $SERVICE_NAME
fi
