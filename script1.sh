#!/bin/bash
# Script 1: System Identity Report
# Author: Kevin George
# Collects and displays basic system information
# Fetch system details and print a formatted report

STUDENT_NAME="Kevin George"
SOFTWARE_CHOICE="Mozilla Firefox"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(lsb_release -d | cut -f2)

echo "======================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "======================================"
echo "Software : $SOFTWARE_CHOICE"
echo "Distro   : $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "License  : Most Linux systems use GPL-based licenses"
echo "======================================"

