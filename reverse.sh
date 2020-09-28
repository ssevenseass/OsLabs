#!/bin/bash


  if ! [[ -f "$2" ]]; then
touch $2
fi
  if [ -f $1 ]
then
 rev "$1" > n
tac n > "$2"
  rm n
else
echo "file is not found">&2
  exit 1
fi
