#!/bin/bash

CPU_THRESHOLD=70
MEMORY_THRESHOLD=75
DISK_THRESHOLD=80
cpu_notification=$(notify-send "ALERT" "YOUR CPU is running\nmore than 70%" --icon="/home/aminedachir/Documents/shell_labex/projects/warning.png")
memory_notification=$(notify-send "ALERT" "YOUR MEMORY is running\nmore than 75%" --icon="/home/aminedachir/Documents/shell_labex/projects/warning.png")
disk_notification=$(notify-send "ALERT" "YOUR DISK is running\nmore than 80%" --icon="/home/aminedachir/Documents/shell_labex/projects/warning.png")

: <<   'COMMENT'
send_alert() {
    echo "$(tput setaf 1)ALERT: $1 usage exceeded threshold! Current value: $2%$(tput sgr0)"
}

send_alert "CPU" "$cpu_usage%"
COMMENT

while true; do
    #monitor cpu usage
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
    cpu_usage=${cpu_usage%.*}
    if ((cpu_usage >= CPU_THRESHOLD)); then
        echo "$cpu_notification"
    fi

    #monitor memory usage
    memory_usage=$(free | awk '/Mem/ {printf("%3.1f", ($3/$2) * 100)}')
    memory_usage=${memory_usage%.*}
    if ((memory_usage >= MEMORY_THRESHOLD)); then
        echo "$memory_notification"
    fi

    #monitor disk usage
    disk_usage=$(df -h / | awk '/\// {print $(NF-1)}')
    disk_usage=${disk_usage%?} #remove %
    if ((disk_usage >= DISK_THRESHOLD)); then
        echo "$disk_notification"
    fi

    clear
    echo "system Usage : "
    echo ">>>>>>>>>>"
    echo "CPU: $cpu_usage%"
    echo "Memory $memory_usage%"
    echo "Disk: $disk_usage%"
    sleep 2

done