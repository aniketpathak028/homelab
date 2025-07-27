#!/bin/bash
count=0
while true; do
    echo "IO_SIM_TASK: PID $$ Count: $count"
    # Simulate writing to a file
    echo "IO_SIM_TASK_DATA_$(date +%s)" >> /tmp/io_sim_log.txt
    sleep 2 # Simulate I/O every 2 seconds
    ((count++))
done