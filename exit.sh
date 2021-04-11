#!/bin/sh

f() {
  return 20
}

# ! is a command
! f && echo "Zero: $?"

f || echo "Twenty: $?"

# if failed, return error
f || return $?
