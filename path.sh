#!/bin/sh

headtail() {
  case "$1" in
  /*) echo "$1: name may not start with a /" ;;
  */*)
    # head priority
    echo "${1#*/}" - "${1%%/*}"
    echo
    ;;
  *)
    tail=$1
    head=
    echo $1
    echo "$head" - "$tail"
    echo
    ;;
  esac
}

headtail aaa/bbb/ccc/ddd/eee/fff.txt
headtail /aaa/bbb/ccc/ddd/eee/fff.txt
headtail aaa
headtail aaa/aaa
