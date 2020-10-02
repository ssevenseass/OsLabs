#!/bin/bash

source func.sh
function exitt() {
  [[ $# -eq 0 ]] && exit 0
  [[ $# -eq 1 ]] && int $1 && exit $1
  ! int $1 && echo "argument is not int" >&2
}
function interEx {
  [[ $# -eq 0 ]] && exit 0
  [[ $# -eq 1 ]] && int $1 && exit $1
  ! int $1 && echo "argument is not int" >&2
  [[ $# > 1 ]] && echo "many arguments" >&2
}
