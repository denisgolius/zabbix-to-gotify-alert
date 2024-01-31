#!/bin/bash

# Gotify-Server URL (IP or FQDN)
GOTIFY_URL="http://change.me"

# Zabbix Parameter
GOTIFY_TOKEN=$1
SUBJECT=$2
MESSAGE=$3
SEVERITY=$4

# Converting Zabbix issue level to Gotify priority
case $SEVERITY in
    "Disaster")
        PRIORITY=10
        ;;
    "High")
        PRIORITY=8
        ;;
    "Average")
        PRIORITY=5
        ;;
    "Warning")
        PRIORITY=3
        ;;
    "Information")
        PRIORITY=0
        ;;
    "Not classified")
        PRIORITY=0
        ;;
    *)
        PRIORITY=1  # Default value for undefined severity
        ;;
esac

# Sending the message to Gotify
curl -X POST "$GOTIFY_URL/message?token=$GOTIFY_TOKEN" -F "title=$SUBJECT" -F "message=$MESSAGE" -F "priority=$PRIORITY"
