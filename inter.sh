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

 while :
  do
My_menu
printf "Enter the section: "
 read -r option
  case $option in
A|calc)
while :
do

printf "Enter args: "
 read -r args
if [[ "$args" != "sum" && "$args" != "sub" && "$args" != "mul" && "$args" != "div" ]]
then echo "argument is not found">&2
else break
 fi
done

while :
do
 echo "Enter: value1"
read  val1
 re='^[+-]?[0-9]+$'
[[ $val1 =~ $re ]] && break
 echo "cannot">&2;
done

while :
do
 echo "Enter value2"
read  val2
 re='^[+-]?[0-9]+$'
[[ $val2 =~ $re ]] && break
echo "cannot">&2;
done
bash calc.sh "$args" "$val1" "$val2"
 ;;
B|search)
while :
do
printf "Enter the directory: "
 read arg1
  [[ -d "$arg1" ]] && break
echo "directory is not found">&2;
done
 printf "Enter second: "
read arg2
bash search.sh "$arg1" "$arg2"
;;
C|reverse)
while :
do
echo "Enter 1 arg:"
read -r arg1
 if ! [ -f "$arg1" ]
then echo "cannot">&2;
else break
fi
done

while :
do
echo "Enter 2 arg"
read -r arg2
  if ! [ -f "$arg2" ]
then echo "cannot">&2;
else break
fi
done
bash reverse.sh "$arg1" "$arg2"
;;
D|strlen)

printf "Enter args: "
 read -r arg
bash strlen.sh "$arg"
;;

E|log)
bash log.sh "$args"
;;
F|exit)

printf "Enter args: "
 read  arg
 if [ -z $arg ]
then exit 0
 bash exit.sh "$arg"
fi;;
G|help)
bash help.sh
;;

*)
esac
while :
do
  echo "exit to menu [yes] [no]">&2

read str
  if [[ $str == "no" ]] ; then
exit 0
 elif [[ $str == "yes" ]] ; then
break
else echo "command not found">&2
fi
 done
  done


