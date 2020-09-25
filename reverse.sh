#!/bin/bash

 if ! [ -f $1 ]
 then
echo -e 1>&2
else tac $1  >  $2
 fi
echo $#

