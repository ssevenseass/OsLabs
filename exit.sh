#!/bin/bash

fuction exit() {
  if [ -z "$1" ]; then 
 echo exit $?
else
 code="$1"
echo exit $code
fi


}
