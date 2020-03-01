#!/bin/sh

while IFS=: read key value; do
  echo $key = $value
done < read.txt
