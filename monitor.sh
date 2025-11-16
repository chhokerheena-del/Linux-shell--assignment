#!/bin/bash
# -------------------------------------------------------
# Script Name: monitor.sh
# Purpose: Logs CPU and memory usage into a file every 5 seconds
# Author: Heena
# Date: $(date +"%Y-%m-%d")
# -------------------------------------------------------

LOGFILE="$HOME/cpu_memory_log.txt"

echo "Monitoring started. Logging to $LOGFILE"
echo "Press CTRL+C to stop."

while true
do
    echo "-------------------------------------" >> $LOGFILE
    echo "Timestamp: $(date)" >> $LOGFILE
    
    echo "CPU Usage:" >> $LOGFILE
    top -bn1 | grep "Cpu(s)" >> $LOGFILE
    
    echo "Memory Usage:" >> $LOGFILE
    free -h >> $LOGFILE
    
    sleep 5
done


