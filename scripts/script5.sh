#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions:"

read -p "1. Tool you use: " TOOL
read -p "2. Freedom means: " FREEDOM
read -p "3. What will you build: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I believe open source is about $FREEDOM." > $OUTPUT
echo "Tools like $TOOL empower innovation." >> $OUTPUT
echo "I aim to build $BUILD and share it freely with the world." >> $OUTPUT

echo "Saved to $OUTPUT"
cat $OUTPUT
