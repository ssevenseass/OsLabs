#!/bin/bash

command="$1"
  case $command in

"calc")
bash calc.sh "$2" "$3" "$4";;

"search")
bash search.sh "$2" "$3";;

"reverse")
bash reverse.sh "$2" "$3";;

"strlen")
[[ $# -eq 1 ]] && echo "too little arguments" && exit 1
bash strlen.sh "$2";;

"log")
bash log.sh;;

"exit")
[[ $# -eq 1 ]] && exit 0
[[ $# > 2 ]] && echo "слишком много аргументов"
bash exit.sh "$2";;

"help")
bash help.sh;;

"interactive")
bash inter.sh;;

*)
echo "error" >&2;
 exit 8;;
esac

