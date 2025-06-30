#!/bin/bash

greeting="Hello from Bash!"
echo "$greeting"

datetime=$(TZ="Europe/Kyiv" date '+%Y-%m-%d %H:%M:%S')
echo "$datetime"

file_count=$(find output/ -type f | wc -l)
echo "Number of regular files in output/: $file_count"

timestamp=$(TZ="Europe/Kyiv" date '+%Y%m%d_%H%M%S')
log_file="logs/log-$timestamp.txt"

{
  echo "$greeting"
  echo "$datetime"
  echo "Number of regular files in output/: $file_count"
} > "$log_file"

# Determine log file name
if [ -n "$1" ]; then
  log_file="logs/$1.txt"
else
  log_file="logs/log-$timestamp.txt"
fi

# Write a message to the log file
echo "Hello! Script executed at $timestamp" >> "$log_file"

# Append execution info to logs/history.txt
echo "$timestamp - $log_file" >> logs/history.txt


