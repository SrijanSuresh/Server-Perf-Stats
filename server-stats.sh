top

used_percentage=$(free | awk '/Mem/{printf("%.2f"), $3/$2*100}')
echo "Memory Used: $used_percentage%"

df -h

ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

ps -eo pid,comm,%mem --sort=-%mem | head -n 6
