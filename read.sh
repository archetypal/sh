#!/bin/sh

while IFS=: read key value || [ "$key" ]; do
  echo $key = $value
done < read.txt
