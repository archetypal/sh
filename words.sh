#!/bin/sh

# echo out words in args
# this was used primarily for testing of command line arguments with spaces
# to ensure the argument stayed in tact.  proper way to keep command line arguments
# as words is to use "$@"
for word in "$@"
  do echo "$word"
done
