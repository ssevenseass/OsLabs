#!/bin/bash


  firstfile="$1"
  secondfile="$2"
 if [ -f $firstfile ]; then
  sort $firstfile -r > secondfile
else echo "error"
fi
  if ![[ -w "$2" ]]; then
echo "error" > /dev/stderr
  bash help.sh
echo exit 55;
fi

  if [[ $# -ne 2 ]]; then
echo "error" > /dev/stderr
  bash help.sh
echo exit 66;
fi

