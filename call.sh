#!/bin/sh

fun() {
  echo "$#"
}

u="Hello World"

! [ "$(fun ${u:+-u $u})" -eq 3 ] && echo "Should be 3 args" && exit 1
! [ "$(fun ${u:+-u "$u"})" -eq 2 ] && echo "Should be 2 args" && exit 1

fun $(ls)

IFS=
! [ "$(fun ${u:+-u "$u"})" -eq 1 ] && echo "Should be 1 args" && exit 1
unset IFS

# this won't work in alpine?
IFS='
'
for x in $(ls); do echo "ls: " $x; done

# set -- "$image${tag:+:$tag}" "$@"
