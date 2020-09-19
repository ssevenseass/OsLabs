#!/bin/bash

comand="$1"
  case $comand in

#task_2.2
#!/bin/bash

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

#task_2.3
#!/bin/bash

"search")
  DIR="$2"
if [ -d "$DIR" ];  then
  ls "$DIR" | grep "$3"
else
  echo "error"
fi;;

#task_2.4
#!/bin/bash

"reverse")
  firstfile="$2"
  secondfile="$3"
if [ -f $firstfile ];  then
  sort $firstfile -r > $secondfile
else
  echo "error"
fi;;

#task_2.5
#!/bin/bash

"strlen")
if [ -z "$2" ];  then
  echo "error"
else
  str="$2"
  echo ${#str}
fi;;

#task_2.6
#!/bin/bash


  #info="\\(II\\)
  #warn=""\\(WW\\)
#grep -E -h -s $info /var/log/anaconda/X.log | sed -E s/$info/Information: /" >> filename.log
#grep -E -h -s $warn /var/log/anaconda/X.log | sed -E s/$warn/Warning: /" >> filename.log


#task_2.7
#!/bin/bash

"exit")
if [ -z "$2" ]; then
  echo exit $?
else
 code="$2"
 echo exit $code
fi;;

#task_2.8
#!/bin/bash


*)
  echo "error"
esac
