#2.2
#!/bin/bash

if [[ $1 == "calc" ]]; then
   read number1 char number2
case $char in
"+") echo $((number1 + number2));;
"-") echo $((number1 - number2));;
"*") echo $((number1 * number2));;
"/") [ $number2 -eq 0 ] && echo "error" || echo $((number1 / number2));;
esac
  else echo "error"
fi


if [[ $1 == "calc" ]] && [[ $2 == "sum" ]]; then
  read number1 char number2
case $char in
  "+") echo $((number1 + number 2));;
esac
  else echo "error"
fi

if [[ $1 == "calc" ]] && [[ $2 == "sub" ]]; then
  read number1 char number2
case $char in
  "-") echo $((number1 - number2));;
esac
  else echo "error"
fi

if [[ $1 == "calc" ]] && [[ $2 == "mul" ]]; then
  read number1 char number2
case $char in
  "*") echo $((number1 * number2));;
esac
  else echo "error"
fi

if [[ $1 == "calc" ]] && [[ $2 == "div" ]]; then
  read number1 char number2
case $char in
  "/") echo $((number1 / number2));;
esac
  else echo "error"
fi

#2.3
#!/bin/bash

if [[ $1 == "search"]] ; then
  DIR="$2"
if [ -d "$DIR" ]; then
  ls "$DIR" | grep -r "$3"
else
  echo "directory not found"
fi

#2.4
#!/bin/bash

if [[ $1 == "reverse" ]]; then
  firstfile="$2"
  secondfile="$3"
if [ -f $firstfile ]; then
  sort $firstfile -r  > $secondfile
fi
else
  echo "error"
fi

