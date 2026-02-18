#!/bin/bash
echo "DISK USAGE ALERT SCRIPT"
echo
echo "Disk Usage:"
df -h

LOGFILE="diskalert.log"
THRESHOLD=80
DATE=$(date)

USAGE=$(df -h / | awk 'NR==2 {print $6}' | tr -d '%\r') 
echo "USAGE: $USAGE, THRESHOLD: $THRESHOLD"
echo

if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "$DATE - ALERT: Disk usage is ${USAGE}% (Threshold: ${THRESHOLD}%)" >> $LOGFILE
    echo "ALERT: Disk usage exceeded!"
    echo "Alert logged"
else
    echo "$DATE - OK: Disk usage is ${USAGE}%" >> $LOGFILE
    echo "OK: Disk usage under threshold."
    echo "Status logged"
fi

