#!/bin/bash
source exit.sh
command="$1"
  case $command in

"calc")
[[ $# > 3 ]] && echo "many arguments" >&2
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
  [[ $# > 2 ]] && echo "many arguments" >&2
exitt "$2";;

"help")
bash help.sh;;

"interactive")
bash inter.sh;;

*)
echo "error" >&2;
 exit 8;;
esac

