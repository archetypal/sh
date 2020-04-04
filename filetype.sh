#!/bin/sh

# filetype
#
# display the file information available through `test`

# ./filetype.sh /dev/stdin
[ -c "$1" ] && echo character special

# echo Hello | ./filetype.sh /dev/stdin
[ -p "$1" ] && echo named pipe

# ./filetype.sh 0 - ignore erros if $1 is not an integer
[ -t "$1" ] 2> /dev/null && echo terminal

# ./filetype.sh .
[ -d "$1" ] && echo directory

# ./filetype.sh /dev/stdin
[ -L "$1" ] && echo symbolic link

# ./filetype.sh filetype.sh
[ -x "$1" ] && echo executable file

# ./filetype.sh filetype.sh
[ -f "$1" ] && echo regular file

# ./filetype.sh bogus
! [ -f "$1" ] && echo not a regular file
