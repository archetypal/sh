#!/bin/sh

# string and numeric tests
#
# display the through `test`


# STRING1 = STRING2
[ "$1" = "$2" ] && echo the strings are equal

# STRING1 != STRING2
[ "$1" != "$2" ] && echo the strings are not equal

