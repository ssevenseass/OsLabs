#!/bin/bash


  code='^[+-]?[0-9]+$'
[[ $1 =~ $code ]] && [[ $# -eq 1 ]] && exit "$1"
[[ $# -eq 1 ]] && echo "command is not int"

