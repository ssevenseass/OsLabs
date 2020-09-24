#!/bin/bash


comand="$1"
  case $comand in


"calc")
  if [ -z "$2" ];  then
read number1 char number2
  case $char in
"+") echo $((number1 + number2));;
"-") echo $((number1 - number2));;
"*") echo $((number1 * number2));;
"/") [ $number2 -eq 0] && echo "error" || echo $((number1 / number2));;
  esac
else
  read number1 number2
argument="$2"
  case $argument in
"sum") echo $((number1 + number2));;
"sub") echo $((number1 - number2));;
"mul") echo $((number1 * number2));;
"div") [ $number2 -eq 0 ] && echo "error" || echo $((number1 / number2));;
  esac
fi;;

"search")
  DIR="$2"
if [ -d "$DIR" ];  then
  ls "$DIR" | grep "$3"
else
  echo "error"
fi;;

"reverse")
  firstfile="$2"
  secondfile="$3"
if [ -f $firstfile ];  then
  sort $firstfile -r > $secondfile
else
  echo "error"
fi;;

"strlen")
if [ -z "$2" ];  then
  echo "error"
else
  str="$2"
  echo ${#str}
fi;;

"log")
  info="\\(II\\)"
  warn="\\(WW\\)"
grep -E -h -s $info /var/log/anaconda/X.log | sed -E "s/$info/Information: /" >> filename.log
grep -E -h -s $warn /var/log/anaconda/X.log | sed -E "s/$warn/Warning: /" >> filename.log


"exit")
if [ -z "$2" ]; then
  echo exit $?
else
 code="$2"
 echo exit $code
fi;;

"help")
echo "APPLICATION HELP. 1.The command calc performs arithmetic operations on numbers. 2. The command search performs a recursive search for the contents of files in the directory.
      3. The command reserve writes the contents of the file in reverse order. 4. The command strlen print the number of characters per line.
      5. The command log should output lines in the /var/log/anaconda/X. log file containing warnings and informational messages.
      6. The command exit terminates with a return code. 7. The command help ";;

*)

  echo "error" > /dev/stderr
esac
 

function calc () {
    if [ -z "$1" ];
    then
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
        "div") [ $number2 -eq 0] && echo "error" || echo $((number1 / number2));;
      esac
    fi
}
 
function search() {
    if [ DIR="$1"] && [ -d "$DIR" ]; then
      ls "$DIR" | grep "$2"
      else echo "error" > /dev/stderr
    fi
}
 
function reverse() {
  firstfile="$1"
  secondfile="$2"
  if [ -f $firstfile ]; then
      sort $firstfile -r > $secondfile
      else echo "error" > /dev/stderr
  fi
}
 
function strlen() {
  if [ -z "$1" ]; then
    echo "1 argument don't exist" > /dev/stderr
  else
    str="$1"
    echo ${#str}
  fi
}
 
function log() {
  info="\\(II\\)"
  warn="\\(WW\\)"
  grep -E -h -s $info /var/log/anaconda/X.log | sed -E "s/$info/Information: /" >> filename.log
  grep -E -h -s $warn /var/log/anaconda/X.log | sed -E "s/$warn/Warning: /" >> filename.log
}
 
function help() {
    echo "APPLICATION HELP. 1.The command calc performs arithmetic operations on numbers. 2. The command search performs a recursive search for the contents of files in the directory.
      3. The command reserve writes the contents of the file in reverse order. 4. The command strlen print the number of characters per line.
      5. The command log should output lines in the /var/log/anaconda/X. log file containing warnings and informational messages.
      6. The command exit terminates with a return code. 7. The command help displays help on using.
      Return codes for errors:
      22-if the first argument is not found or does not match the commands.
      11-" 

}