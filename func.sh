#!bin/bash

  function int {
 num='^[+-]?[0-9]+$'
[[ $1 =~ $num ]]
}
  function errorfile {
 test -f "$1"
}
  function errorfile1 {
 test -r "$1"
}
  function errorfile2 {
 test -w "$1"
}
