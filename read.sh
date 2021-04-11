#!/bin/sh

# parse lines into key and value with a : separator
while IFS=: read key value || [ "$key" ]; do
  echo $key = $value
done <read.txt

# when ls has piped output, it switches to line format
ls >ls.txt

# read lines, because only one argument, doesn't matter what IFS is, but
# osx won't preserve trailing space
ls | while read -r line; do
  echo "ls: $line"
done

while read -r line; do
  echo "file: $line"
done <"space name.txt"

# Won't preserve trailing space
echo "trailing:  " | while read -r line; do
  echo "'$line'"
done

# Trailing space preserved
echo "trailing:  " | while IFS= read -r line; do
  echo "'$line'"
done
