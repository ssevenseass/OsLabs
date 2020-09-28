#!/bin/bash


  if grep -rn $2 / $1
then return
  else
echo "no occurrences">/dev/stderr
fi



