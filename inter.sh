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
  case $option in
A|calc)

printf "Enter args: "
 read -r args

 echo "Enter: value1"
read -r val1
 echo "Enter value2"
read -r val2

 bash calc.sh "$args" "$val1" "$val2";;
B|search)

printf "Enter args: "
 read -r args
  bash search.sh "$args";;
C|reverse)
echo "Enter 1 arg:"
read -r arg1
echo "Enter 2 arg"
read -r arg2
  bash reverse.sh "$args" "$arg1" "$arg2";;
D|strlen)

printf "Enter args: "
 read -r args
  bash strlen.sh "$args";;
E|log)
  bash log.sh "$args";;
F|exit)

printf "Enter args: "
 read -r args
  bash exit.sh "$args";;
G|quit)
  break 2;;
H|help)
  bash help.sh;;

*)
echo
  echo "function don't exist, try help";;
esac
  echo
read n
 done
echo end

