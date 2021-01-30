#!/bin/sh

# parse lines into key and value with a : separator
while IFS=: read key value || [ "$key" ]; do
  echo $key = $value
done < read.txt
