#!/bin/bash


 if [ -z "$1" ]; then
read number1 char number2
  case $char in
"+") echo $((number1 + number2));;
"-") echo $((number1 - number2));;
"*") echo $((number1 * number2));;
"/") [ $number2 -eq 0 ] && echo "error" || echo $((number1 / number2));;
 esac
else

 argument="$1"
  case $argument in
"sum") echo $(($2 + $3));;
"sub") echo $(($2 - $3));;
"mul") echo $(($2 * $3));;
"div") [ $3 -eq 0 ] && echo "error" || echo $(($2 / $3));;
 esac
fi
  if [[ $# -ne 3 ]]; then
echo "error" > /dev/stderr
  bash help.sh
echo exit 11;
fi


 if ! [[ $2 =~ ^-?[[:digit:]]+$ ]]; then
  echo "error" > /dev/stderr
  bash help.sh
echo exit 18;
fi
