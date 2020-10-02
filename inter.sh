#!/bin/bash

source func.sh
source exit.sh
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
 ! [[ $val1 -eq $val1 ]] 2>/dev/null && echo "error argument" && continue
int $val1 && break
 echo "argument is not int" >&2
done

while :
do
 echo "Enter value2"
read  val2
 ! [[ $val2 -eq $val2 ]] 2>/dev/null && echo "error argument" && continue
  if [[ $args == div ]] && [[ $val2 -eq 0 ]]
 then echo "division by zero"
continue
 fi
int $val2 && break
echo "argument is not int" >&2
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
  errorfile $arg1 && break
if errorfile1 $arg1
 then echo "the file is not readable" >&2
else echo "there is no such file" >&2
fi
done

while :
do
echo "Enter 2 arg"
read -r arg2
  if ! errorfile $arg2
 then touch $arg2
  fi
  if ! errorfile2 $arg2
then echo "not written to a file" >&2
 else
break
fi
done
bash reverse.sh "$arg1" "$arg2"
;;
D|strlen)

printf "Enter args: "
 read arg
 if [[ $arg -eq 0 ]] ; then
echo "string is empty" >&2
fi
bash strlen.sh "$arg"
;;

E|log)
bash log.sh "$args"
;;
F|exit)
while :
do
printf "Enter the arg:"
read arg
interEx $arg
done
;;
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
  else echo "command is not found" >&2
fi
done
done


