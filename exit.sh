#!/bin/bash

source func.sh
 arg=$1
[[ $# -eq 0 ]] && exit 0
[[ $# -eq 1 ]] && int $arg && exit $arg
[[ $# -eq 1 ]] && echo "argument is not int" >&2
