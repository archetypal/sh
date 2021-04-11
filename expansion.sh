#!/bin/sh
# shellcheck disable=SC2016

# Shell Command Language
#
# 2.6.2 Parameter Expansion
#
# Test the argument passed against possible parameter expansions
#

echo
echo 'Parameter Expansion:  $1='"${1-'<unset>'}"
echo

echo test, [] -- condition evaluation utility
echo

#
# use default if unset (-)
#

# ./expansion.sh ""
! [ "${1-_}" ] &&
  echo 'set and empty       ! [ "${1-_}" ]'

# ./expansion.sh
# ./expansion.sh hello
[ "${1-_}" ] &&
  echo 'unset or not empty    [ "${1-_}" ]'

#
# use substitute if set (x)
#

# ./expansion.sh ""
# ./expansion.sh hello
[ "${1+_}" ] &&
  echo 'set                   [ "${1+_}" ]'

# ./expansion.sh
! [ "${1+_}" ] &&
  echo 'unset               ! [ "${1+_}" ]'

# ./expansion.sh hello
[ "$1" ] &&
  echo 'set and not empty         [ "$1" ]'

# ./expansion.sh
# ./expansion.sh ""
! [ "$1" ] &&
  echo 'unset or empty          ! [ "$1" ]'

echo
echo expansions
echo
echo 'default if unset                         ${1-x} = '${1-x}
echo 'default if unset or empty               ${1:-x} = '${1:-x}
echo 'default if empty                   ${1:-${1+x}} = '${1:-${1+x}}
echo 'substitute set                           ${1+x} = '${1+x}
echo 'substitute set and not empty            ${1:+x} = '${1:+x}