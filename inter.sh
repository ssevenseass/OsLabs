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
  echo -e "\tG. HELP"
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
if [[ "$args" != "sum" && "$args" != "sub" && "$args" != "mul" && "$args" != "div" ]]
then echo "argument is not found">&2
fi

 echo "Enter: value1"
read -r val1
  re='^[+-]?[0-9]+$'
if   ! [[ $val1 =~ $re ]]; then
  echo "cannot" >&2;
exit 1
 fi
 echo "Enter value2"
read -r val2
  re='^[+-]?[0-9]+$'
if  ! [[ $val2 =~ $re ]]; then
 echo "cannot" >&2
exit 1
 fi
  if [ -f "calc.sh" ]
then echo "file io don't exist">&2
fi
  bash calc.sh "$args" "$val1" "$val2"
  if [ -f "calc.sh" ]
then echo "file is not found">&2
fi;;
B|search)

printf "Enter the expression: "
read -r arg1
printf "Enter the directory: "
read -d arg2
  if ! [ -d "$arg2" ]
then echo "directory is not found">&2
fi
  bash search.sh "$arg1" "$arg2"
  if [ -f "search.sh" ]
then echo "cannot">&2
 fi;;
C|reverse)
echo "Enter 1 arg:"
read -r arg1
  if ! [ -f "$arg1" ]
then echo "cannot" >&2
fi
echo "Enter 2 arg"
read -r arg2
  if ! [ -f "$arg2" ]
then echo "cannot" >&2
fi
  bash reverse.sh  "$arg1" "$arg2"
  if [ -f "reverse.sh" ]
then echo "error" >&2
fi;;
D|strlen)

printf "Enter arg: "
 read -r arg
  bash strlen.sh "$arg"
  if ! [ -f "strlen.sh" ]
then echo "error file" >&2
fi;;
E|log)
  bash log.sh "$args"
  if ! [ -f "log.sh" ]
then echo "error file" >&2
fi;;
F|exit)

printf "Enter arg: "
 read -r arg
 if [ -z "$arg" ]
then exit 0;
else
exit "$arg"
fi
  bash exit.sh "$arg"
  if ! [ -f "exit.sh" ]
then echo "error file">&2
fi;;
G|help)
  bash help.sh
  if ! [ -f "help.sh" ]
then echo "error file" >&2
fi;;

*)
echo
  exit 3;
esac
  echo
read n
 done
echo end


