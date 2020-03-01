#!/bin/sh

# string and numeric tests
#
# display the through `test`


# STRING1 = STRING2
[ "$1" = "$2" ] && echo the strings are equal

# STRING1 != STRING2
[ "$1" != "$2" ] && echo the strings are not equal

# INTEGER1 -eq INTEGER2
[ $1 -eq $2 ] && echo INTEGER1 is equal to INTEGER2
        
# INTEGER1 -ge INTEGER2
[ $1 -ge $2 ] && echo INTEGER1 is greater than or equal to INTEGER2

    #           

    #    INTEGER1 -gt INTEGER2
    #           INTEGER1 is greater than INTEGER2

    #    INTEGER1 -le INTEGER2
    #           INTEGER1 is less than or equal to INTEGER2

    #    INTEGER1 -lt INTEGER2
    #           INTEGER1 is less than INTEGER2

