#!/bin/bash

function calc() {
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
}


