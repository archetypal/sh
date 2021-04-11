#!/bin/sh

# read variable without subshell

var="one:two
three:four
five:six"

# parse lines into key and value with a : separator
while IFS=: read -r key value || [ "$key" ]; do
  echo "$key = $value"
done <<_
$var
_
