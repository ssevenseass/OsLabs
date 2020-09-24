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

read number1 number2
 argument="$1"
  case $argument in
"sum") echo $((number1 + number2));;
"sub") echo $((number1 - number2));;
"mul") echo $((number1 * number2));;
"div") [ $number2 -eq 0 ] && echo "error" || echo $((number / number2));;
 esac
fi
  if [[ $# -ne 3 ]]; then
echo "error" > /dev/stderr
  bash help.sh
echo exit 11;
fi
  

  if [[ $2 =~ ^-?[0-9]+$ ]] || ![[ $3=~ ^-?[0-9]+$ ]]; then
echo "error" > /dev/stderr
  bash help.sh
echo exit 33;
fi


