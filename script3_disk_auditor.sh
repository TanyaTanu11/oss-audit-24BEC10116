#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Tanya | Roll: 24BEC10116 | Course: Open Source Software

# List of important system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "================================"
echo " Directory Audit Report"
echo " Generated: $(date)"
echo "================================"

# Loop through each directory and report permissions + size
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, group using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get human-readable size, suppress permission errors
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR"
        echo "  Permissions/Owner : $PERMS"
        echo "  Size              : $SIZE"
        echo "  ---"
    else
        echo "$DIR does not exist on this system."
    fi
done

echo ""
echo "--- Git Config Directory Check ---"
# Check if git's config directory exists and show its permissions
GIT_CONFIG="$HOME/.gitconfig"
if [ -f "$GIT_CONFIG" ]; then
    echo "Git config found at: $GIT_CONFIG"
    ls -la "$GIT_CONFIG"
else
    echo "No global .gitconfig found at $HOME/.gitconfig"
fi
