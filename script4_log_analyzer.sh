#!/bin/bash
# Script 4: Log File Analyzer
# Author: Tanya | Roll: 24BEC10116 | Course: Open Source Software
# Usage: ./script4_log_analyzer.sh /path/to/logfile [keyword]

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is 'error' if not provided
COUNT=0

# Check if a log file argument was provided
if [ -z "$LOGFILE" ]; then
    echo "No log file provided. Creating a sample log for demonstration..."
    # Create a sample log file for testing purposes
    LOGFILE="/tmp/sample_git_log.txt"
    cat > "$LOGFILE" << EOF
2024-01-01 10:00:01 INFO  Git initialized repository
2024-01-01 10:01:00 ERROR Failed to connect to remote origin
2024-01-01 10:02:00 INFO  Commit successful
2024-01-01 10:03:00 WARNING Merge conflict detected
2024-01-01 10:04:00 ERROR Authentication failed for user
2024-01-01 10:05:00 INFO  Push completed
2024-01-01 10:06:00 ERROR Remote branch not found
2024-01-01 10:07:00 INFO  Repository cloned successfully
EOF
    echo "Sample log created at $LOGFILE"
fi

# Verify the file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    exit 1
fi

# Check if file is empty — retry logic
if [ ! -s "$LOGFILE" ]; then
    echo "Warning: Log file is empty."
    echo "Retrying with /tmp/sample_git_log.txt ..."
    LOGFILE="/tmp/sample_git_log.txt"
fi

echo "================================"
echo " Log File Analyzer"
echo " File    : $LOGFILE"
echo " Keyword : $KEYWORD"
echo "================================"

# Read file line by line and count keyword matches
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times."
echo ""
echo "--- Last 5 matching lines ---"
# Print last 5 lines containing the keyword
grep -i "$KEYWORD" "$LOGFILE" | tail -5
