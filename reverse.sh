#!/bin/bash
 reverse() {


  firstfile="$1"
  secondfile="$2"


 if [ -f $firstfile ]; then
  tac $1  >  $2
 else echo "error"
fi
}
#1

