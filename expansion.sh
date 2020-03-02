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

echo test, [ -- condition evaluation utility
echo

# ./expansion.sh ""
[ -z ${1-x} ]   && echo 'null                [ -z ${1-x} ]'

# ./expansion.sh
# ./expansion.sh "x"
! [ -z ${1-x} ] && echo 'not null            ! [ -z ${1-x} ]'

# cannot use [ -n ${1+0} ] as `test -n` returns 0 because '-n' is interpreted as a string test
! [ -z ${1+x} ] && echo 'set                 ! [ -z ${1+x} ]'

# if $1 is unset, then null is used, and `test -z` return 0.  If $1 is set, then "x" is substituted
[ -z ${1+x} ]   && echo 'unset               [ -z ${1+x} ]'

[ $1 ] &&          echo 'set and not null    [ $1 ]'

# ./expansion.sh
# ./expansion.sh ""
! [ $1 ] &&        echo 'unset or null       ! [ $1 ]'

echo
echo expansions
echo
echo 'default if unset                         ${1-x} = '${1-x}
echo 'default if unset or null                ${1:-x} = '${1:-x}
echo 'default if null                    ${1:-${1+x}} = '${1:-${1+x}}
echo 'substitute set                           ${1+x} = '${1+x}
echo 'substitute set and not null             ${1:+x} = '${1:+x}
echo 'substitute not null   $(y=${1-x}; echo ${y:+x}) = '$(y=${1-x}; echo ${y:+x})
