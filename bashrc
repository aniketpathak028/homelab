# .bashrc

# User specific aliases and functions

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'

# Alias to easily get into a running container (assuming you named it 'sysadmin-playground')
alias enter='docker exec -it sysadmin-playground bash'

# Prompt settings for better context
# \u: username
# \h: hostname
# \W: basename of current working directory
# \$: prompt symbol
# \n: newline
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '

shopt -s histappend

function get_pids() {
    echo "--- CPU Bound Task PIDs ---"
    ps aux | grep cpu_bound_task.sh | grep -v grep | awk '{print $2}'
    echo "--- IO Sim Task PIDs ---"
    ps aux | grep io_sim_task.sh | grep -v grep | awk '{print $2}'
    echo "--- Net Client Task PIDs ---"
    ps aux | grep net_client_task.sh | grep -v grep | awk '{print $2}'
}

function practice_console() {
    echo "Launching practice console..."
    echo "Use 'htop', 'top', 'ps aux', 'dstat', 'iotop', 'iftop' to monitor."
    echo "Use 'get_pids' to find task PIDs."
    echo "Use 'kill <PID>', 'renice <priority> -p <PID>', 'schedtool -e <PID>' (or -p)"
    echo ""
}

practice_console