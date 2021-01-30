#!/bin/sh

# Shell Command Language
#
# 2.6.2 Parameter Expansion
#
# Test the argument passed against possible parameter expansions
#

echo
echo 'Parameter Expansion:  $1='${1-'<unset>'}
echo

echo test, []  -- condition evaluation utility
echo

# ./expansion.sh ""
[ -z ${1-x} ]   && echo 'empty               [ -z ${1-x} ]'

# ./expansion.sh
# ./expansion.sh hello
! [ -z ${1-x} ] && echo 'not empty           ! [ -z ${1-x} ]'

# cannot use [ -n ${1+0} ] as `test -n` returns 0 because '-n' is interpreted as a string, not a flag
# ./expansion.sh ""
# ./expansion.sh hello
! [ -z ${1+x} ] && echo 'set                 ! [ -z ${1+x} ]'

# if $1 is unset, then nothing is used, and `test -z` return 0.  If $1 is set, then "x" is substituted
# ./expansion.sh
[ -z ${1+x} ]   && echo 'unset               [ -z ${1+x} ]'

# ./expansion.sh hello
[ $1 ] &&          echo 'set and not empty   [ $1 ]'

# ./expansion.sh
# ./expansion.sh ""
! [ $1 ] &&        echo 'unset or empty      ! [ $1 ]'

echo
echo expansions
echo
echo 'default if unset                         ${1-x} = '${1-x}
echo 'default if unset or empty               ${1:-x} = '${1:-x}
echo 'default if empty                   ${1:-${1+x}} = '${1:-${1+x}}
echo 'substitute set                           ${1+x} = '${1+x}
echo 'substitute set and not empty            ${1:+x} = '${1:+x}
echo 'substitute not empty  $(y=${1-x}; echo ${y:+x}) = '$(y=${1-x}; echo ${y:+x})
