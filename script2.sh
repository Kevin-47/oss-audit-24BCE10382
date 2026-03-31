#!/bin/bash
# Script 2: FOSS Package Inspector
# Checks if Firefox is installed on the system
# Displays package details and a short description
PACKAGE="firefox"
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi
case $PACKAGE in
    firefox) echo "Firefox: an open-source browser focused on privacy and freedom" ;;
    git) echo "Git: distributed version control system" ;;
    vlc) echo "VLC: open-source media player" ;;
    python3) echo "Python: community-driven programming language" ;;
    *) echo "Unknown package" ;;
esac

