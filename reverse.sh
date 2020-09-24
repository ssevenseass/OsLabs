#!/bin/bash

function reverse() {
  firstfile="$1"
  secondfile="$2"
 if [ -f $firstfile ]; then
  sort $firstfile -r > $secondfile
else echo "error" > /dev/stderr
fi
}

