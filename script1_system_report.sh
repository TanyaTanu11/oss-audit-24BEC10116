#!/bin/bash
# Script 1: System Identity Report
# Author: Tanya | Roll: 24BEC10116 | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Tanya"
SOFTWARE_CHOICE="Git"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime)
CURRENT_DATE=$(date '+%d %B %Y %H:%M:%S')
DISTRO=$(sw_vers -productName 2>/dev/null || cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2)

# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo " Roll Number : 24BEC10116"
echo " Software    : $SOFTWARE_CHOICE"
echo "================================"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Uptime       : $UPTIME"
echo "Date/Time    : $CURRENT_DATE"
echo "Distro       : $DISTRO"
echo "--------------------------------"
echo "Git is licensed under GPL v2 — a copyleft license"
echo "that guarantees all users the freedom to run,"
echo "study, share, and modify the software."
echo "================================"
