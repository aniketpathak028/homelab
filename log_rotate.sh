#!/bin/bash
# Rotate the IO simulation log
if [ -f /tmp/io_sim_log.txt ]; then
    mv /tmp/io_sim_log.txt /tmp/io_sim_log_$(date +%Y%m%d_%H%M%S).log
    echo "Log rotated: /tmp/io_sim_log_$(date +%Y%m%d_%H%M%S).log"
fi
exit 0