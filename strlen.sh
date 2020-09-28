#!/bin/bash


  if [ -z "$1" ]; then
 echo "argument don't exist" >&2
exit 12
else
  str="$1"
echo ${#str}
fi


