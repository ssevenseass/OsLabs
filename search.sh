#!/bin/bash


  if [ DIR="$1" ] && [ -d "$DIR" ]; then
 ls "$DIR" | grep "$2"
else echo "error" > /dev/stderr
 bash help.sh
 exit 22;
fi

if [[ $# -ne 2 ]]; then
  echo "error" > /dev/stderr
bash help.sh
exit 77;
fi
