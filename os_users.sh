#!/bin/bash

echo "OS Version:"
lsb_release -a 2>/dev/null || cat /etc/os-release
echo "-------------------------------------"

echo "Users with Bash shell:"
cat /etc/passwd | grep "/bin/bash" | cut -d: -f1
echo "-------------------------------------"

echo "Open Ports:"
sudo lsof -i -P -n | grep LISTEN
echo "-------------------------------------"
