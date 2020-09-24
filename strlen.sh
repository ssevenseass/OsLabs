#!/bin/bash


  if [ -z "$1" ]; then
 echo "argument don't exist" > /dev/stderr
else
  str="$1"
echo ${#str}
fi
