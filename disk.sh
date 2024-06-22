#!/bin/bash

# Set the threshold percentage (e.g., 80%)
THRESHOLD=10

# Get the current disk usage percentage for the root partition
CURRENT_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# Set email details
TO="arunpractice001@gmail.com"
SUBJECT="Disk Space Alert"
BODY="Warning: Your root partition is ${CURRENT_USAGE}% full."

# Check if the current usage exceeds the threshold
if [ "$CURRENT_USAGE" -gt "$THRESHOLD" ]; then
    echo -e "Subject: $SUBJECT\n\n$BODY" | msmtp --from=default -t $TO
fi
