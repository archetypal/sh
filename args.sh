#!/bin/sh

# quotes around $@ are necessary to process words.
# for example, ./args.sh "one two" should be one word and ""./args.sh one two" should be two arfs.
for arg in "$@"
do
  # quotes here will preserve leading white space
  echo "$arg"
done