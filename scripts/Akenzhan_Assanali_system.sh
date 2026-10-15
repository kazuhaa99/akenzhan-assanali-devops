#!/bin/bash

INFO_FILE="$(dirname "$0")/../Akenzhan_Assanali_info.txt"

echo "=============================="
echo "Student Information"
echo "=============================="
echo
echo "Name: Assanali"
echo "Surname: Akenzhan"
echo "Group: IT2-2313"
echo "Student ID: 38330"
echo
echo "=============================="
echo "System Information"
echo "=============================="
echo
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -s) $(uname -r)"
echo "Disk Usage: $(df -h / | awk 'NR==2 {print $3 " used of " $2 " (" $5 ")"}')"
echo "Memory Usage: $(free -h | awk '/Mem:/ {print $3 " used of " $2}')"
echo

if [ -f "$INFO_FILE" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
