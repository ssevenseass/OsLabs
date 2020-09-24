#!/bin/bash

function My_menu {
 clear
  echo
  echo -e "\t\t\tMENU\n"
  echo -e "\tA. CALC"
  echo -e "\tB. SEARCH"
  echo -e "\tC. REVERSE"
  echo -e "\tD. STRLEN"
  echo -e "\tE. LOG"
  echo -e "\tF. EXIT"
  echo -e "\tG. QUIT"
  echo -e "\tH. HELP"
}

 while [ $? -ne 1 ]
  do
My_menu
printf "Enter the section: "
 read -r option
printf "Enter args: "
 read -r args
  case $option in
A|calc)
  bash calc.sh "$args";;
B|search)
  bash search.sh "$args";;
C|reverse)
  bash reverse.sh "$args";;
D|strlen)
  bash strlen.sh "$args";;
E|log)
  bash log.sh "$args";;
F|exit)
  bash exit.sh "$args";;
G|quit)
  break 2;;
H|help)
  bash help.sh "$args";;

*)
echo
  echo "function don't exist, try help";;
esac
  echo
read n
 done
echo end

