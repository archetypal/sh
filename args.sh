#!/bin/sh

# quotes around $@ are necessary to process words, for example, ./args.sh "one two"
for arg in "$@"
do
  # quotes here will preserve leading white space
  echo "$arg"
done