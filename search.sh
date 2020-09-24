#!/bin/bash


  if [ DIR="$1" ] && [ -d "$DIR" ]; then
 ls "$DIR" | grep "$2"
else echo "error" > /dev/stderr
fi

