#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Takes user input to generate a text manifesto
# Saves output to a file and displays it

echo "Answer three questions to generate your manifesto."
echo ""
read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. What would you build and share freely? " BUILD
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"
echo "On $DATE, I reflect on the importance of open source." > $OUTPUT
echo "Using tools like $TOOL reminds me that software should represent $FREEDOM." >> $OUTPUT
echo "In the future, I aspire to build $BUILD and share it with the world." >> $OUTPUT
echo "Open source is not just code, it is a philosophy of collaboration and innovation." >> $OUTPUT
echo ""
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT

