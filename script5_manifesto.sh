#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Tanya | Roll: 24BEC10116 | Course: Open Source Software

echo "================================"
echo " Open Source Manifesto Generator"
echo "================================"
echo "Answer three questions to generate your personal manifesto."
echo ""

# Read user input interactively
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get current date and username
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose the manifesto by concatenating user inputs into a paragraph
echo "" > "$OUTPUT"
echo "Open Source Manifesto — $(whoami)" >> "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo "---" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Every day, I rely on $TOOL — a tool built not for profit," >> "$OUTPUT"
echo "but for people. To me, freedom means $FREEDOM, and that is" >> "$OUTPUT"
echo "exactly what open source represents: the right to learn, to" >> "$OUTPUT"
echo "modify, and to share without restriction." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "If I could contribute one thing to the world, it would be $BUILD —" >> "$OUTPUT"
echo "shared freely, for anyone to use, improve, and pass on." >> "$OUTPUT"
echo "That is the open source promise, and I choose to be part of it." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "— Tanya, 24BEC10116 | $(date)" >> "$OUTPUT"

echo ""
echo "--- Your Manifesto ---"
# Display the saved manifesto
cat "$OUTPUT"
echo ""
echo "Manifesto saved to $OUTPUT"
