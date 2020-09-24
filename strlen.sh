#!/bin/bash

function strlen() {
  if [ -z "$1" ]; then 
 echo "argument don't exist" > /dev/stderr
else
  str="$1"
echo ${#str}
fi
}

