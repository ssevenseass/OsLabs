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
  echo -e "\tF. QUIT"
  echo -e "\tG. HELP"
}
 
while [ $? -ne 1 ]
  do
  My_menu
  printf "Enter the section: "
  read -r option
  printf "Enter args: "
  read -r args
  source ./functions.sh
   case $option in
    A|calc)
      echo "$(calc $args)";;
    B|search)
      echo "$(search $args)";;
    C|reverse)
      echo "$(reverse $args)";;
    D|strlen)
      echo "$(strlen $args)";;
    E|log)
      echo "$(log $args)";;
    F|quit)
      break 2;;
    G|help)
      echo "$(help $args)";;
    *)
      echo
      echo "func dont exist, try help" > /dev/stderr
    
esac
  echo
  read n
done
 
echo end




