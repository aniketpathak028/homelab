#!/bin/bash
count=0
while true; do
    echo "CPU_BOUND_TASK: PID $$ Count: $count"
    # Simulate work
    for ((i=0; i<10000000; i++)); do : ; done
    ((count++))
    sleep 0.1 # Brief sleep to prevent total CPU hogging without control
done