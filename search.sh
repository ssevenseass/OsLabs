#!/bin/bash


  if grep -rn $2 / $1;
then return
  else
echo "no occurrences">&2;
fi



