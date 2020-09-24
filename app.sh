#!/bin/bash

command="$1"
  case $command in

"calc")
bash calc.sh;;

"search")
bash search.sh;;

"reverse")
bash reverse.sh;;

"strlen")
bash strlen.sh;;

"log")
bash log.sh;;

"exit")
bash exit.sh;;

"help")
bash help.sh;;

"interactive")
bash lab.sh;;

*)
echo "error" >/dev/stderr;
bash help.sh
 echo exit 88;;
esac
