#!/bin/bash
# Script 3: Disk and Permission Auditor
# Audits key directories for size and permissions
# Also checks Firefox configuration directory

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist"
    fi
done

# Check Firefox config directory
FIREFOX_DIR="$HOME/.mozilla/firefox"

echo ""
echo "Checking Firefox Config Directory..."

if [ -d "$FIREFOX_DIR" ]; then
    PERMS=$(ls -ld $FIREFOX_DIR | awk '{print $1, $3, $4}')
    echo "Firefox config found: $PERMS"
else
    echo "Firefox config directory not found"
fi

