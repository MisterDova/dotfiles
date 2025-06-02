#!/bin/zsh
get_cpu_usage() {
    CPU_USAGE=$(top -l 1 | awk '/CPU usage/ {print $3 + $5}')
    CPU_USAGE=$(top -l 1 | grep "CPU usage" | awk '{print $3}' | sed 's/%//')
    echo "$CPU_USAGE"
}

get_used_ram() {
    MEM_INFO=$(sysctl -n hw.memsize)
    USED_MEM=$(ps -caxm -o rss | awk '{sum+=$1} END {print sum * 1024}')
    RAM_USAGE=$(awk "BEGIN {printf \"%.2f\", ($USED_MEM / $MEM_INFO) * 100}")
    echo "$RAM_USAGE"
}

CPU_USAGE=$(get_cpu_usage)
USED_RAM=$(get_used_ram)

sketchybar --set $NAME icon="󰍛 $CPU_USAGE%" label="󰍹 $USED_RAM%" \

