#!/bin/bash



  if [ -f $1 ]
then
 tac $1  >  $2
else
  exit 1 >/dev/stderr
fi
