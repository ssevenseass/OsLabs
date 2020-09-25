#!/bin/bash

 if ! [ -f $1 ]
 then
echo  "error" > /dev/stderr
  bash help.sh
echo exit 19;
else tac $1  >  $2
  fi
echo $#

