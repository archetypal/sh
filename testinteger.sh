#!/bin/sh

# integer tests

if [ $# -ne 2 ]
then
  echo Expecting 2 arguments
  exit 1
fi

if ! [ $1 -eq $1 ] 2> /dev/null
then
  echo First argument must be an integer
  exit 1
fi

if ! [ $2 -eq $2 ] 2> /dev/null
then
  echo Second argument must be an integer
  exit 1
fi

# is equal to
[ $1 -eq $2 ] && echo $1 is equal to $2
        
# is greater than or equal to
[ $1 -ge $2 ] && echo $1 is greater than or equal to $2

# is greater than
[ $1 -gt $2 ] && echo $1 is greater than $2

# is less than or equal to
[ $1 -le $2 ] && echo $1 is less than or equal to $2

# is less than
[ $1 -lt $2 ] && echo $1 is less than $2

# is not equal to
[ $1 -ne $2 ] && echo $1 is not equal to $2
