#!/bin/bash

function search() {
  if [ DIR="$2" ] && [ -d "$DIR" ]; then
 ls "$DIR" | grep "$2"
else echo "error" > /dev/stderr
fi
}

