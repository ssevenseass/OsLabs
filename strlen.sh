#!/bin/bash


  if [ -z "$1" ]; then
 echo "argument don't exist" > /dev/stderr
  bash help.sh
echo exit 12;
else
  str="$1"
echo ${#str}
fi


