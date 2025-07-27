#!/bin/bash
count=0
while true; do
    echo "NET_CLIENT_TASK: PID $$ Count: $count"
    curl -s --max-time 5 http://example.com/ > /dev/null
    if [ $? -ne 0 ]; then
        echo "NET_CLIENT_TASK: Failed to connect to example.com"
    fi
    sleep 5 # Try connecting every 5 seconds
    ((count++))
done