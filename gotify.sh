#!/bin/bash

ALERTSENDTO=$1
ALERTSUBJECT=$2
ALERTMESSAGE=$3

curl -X POST "http://your-domain.com/message?token=$ALERTSENDTO" -F "title=$ALERTSUBJECT" -F "message=$ALERTMESSAGE" -F "priority=5" > /dev/null 2>&1
