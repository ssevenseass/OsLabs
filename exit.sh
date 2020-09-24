#!/bin/bash

fuction exit() {
  if [ -z "$2" ]; then 
 echo exit $?
else
 code="$2"
echo exit $code
fi


}
