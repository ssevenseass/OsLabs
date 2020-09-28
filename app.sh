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
bash strlen.sh "$2";;

"log")
bash log.sh;;

"exit")
bash exit.sh;;

"help")
bash help.sh;;

"interactive")
bash inter.sh;;

*)
echo "error" >/dev/stderr;
bash help.sh
 echo exit 88;;
esac

