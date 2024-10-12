
#!/bin/sh

print_empty_lines () {
  for i in {1..5}; do
    echo ""
  done
}

cpu_usage=$(top -bn2 | grep "Cpu(s)" | \
           sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
           awk '{print 100 - $1"%"}' | tail -n 1)

mem_usage=$(free -mh | grep Mem | awk '{printf "%s/%s", $4,$3}')
mem_usage_percentage=$(free -mh | grep Mem | awk '{printf $3/$2 * 100}' | cut -d . -f1)
top_5_processes_cpu=$(ps -eo user,pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6)
top_5_processes_memory=$(ps -eo user,pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6)
root_fs_usage=$(df -H / --output=size,used,avail | tail -n 1 | awk '{printf "%s/%s", $1,$2}')
root_fs_usage_percentage=$(df -H / --output=size,used,avail | tail -n 1 | awk '{printf $2/$1 * 100}' | cut -d . -f1)

echo "Server Performance Stats"
print_empty_lines
echo "CPU Usage: $cpu_usage"
echo "Memory Usage: $mem_usage ($mem_usage_percentage%)"
echo "Disk Usage: $root_fs_usage ($root_fs_usage_percentage%)"
print_empty_lines
echo "Top 5 processes by CPU usage:
$top_5_processes_cpu"
echo "Top 5 processes by memory usage:
$top_5_processes_memory"
