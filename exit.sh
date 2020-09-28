#!/bin/bash


  code='^[+-]?[0-9]+$'
 if [[ $1 =~ $code ]]; then
  exit "$1"
else
  exit 0
fi

