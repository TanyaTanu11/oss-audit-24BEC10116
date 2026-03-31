#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Tanya | Roll: 24BEC10116 | Course: Open Source Software

PACKAGE="git"

# Check if package is installed (works on Mac and Linux)
if command -v $PACKAGE &>/dev/null; then
    echo "✔ $PACKAGE is installed."
    # Get version info
    VERSION=$(git --version)
    echo "Version      : $VERSION"
    echo "License      : GPL v2"
    echo "Summary      : Fast, distributed version control system"
else
    echo "✘ $PACKAGE is NOT installed."
fi

echo ""
echo "--- Philosophy Note ---"

# Case statement for different FOSS packages
case $PACKAGE in
    git)
        echo "Git: Born from necessity — Linus built it in 2 weeks when proprietary tools failed the Linux kernel project." ;;
    httpd|apache2)
        echo "Apache: the web server that built the open internet." ;;
    python3|python)
        echo "Python: a language shaped entirely by community consensus and openness." ;;
    vlc)
        echo "VLC: built by French students who just wanted to watch videos freely." ;;
    firefox)
        echo "Firefox: a nonprofit's stand for an open, non-monopolized web." ;;
    *)
        echo "$PACKAGE: another brick in the open-source foundation of modern computing." ;;
esac
