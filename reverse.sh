#!/bin/bash

function reverse() {
  firstfile="$2"
  secondfile="$3"
 if [ -f $firstfile ]; then
  sort $firstfile -r > $secondfile
else echo "error" > /dev/stderr
fi
}

