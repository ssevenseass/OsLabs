#!/bin/bash

source func.sh

 ! errorfile $1 && echo "file is not found" >&2
 ! errorfile $2 touch $2
 ! errorfile1 $1 && echo "the file ia not readable" >&2
 ! errorfile2 $2 && echo "not written to a file" >&2

  rev "$1" > f
tac f > "$2"
  rm f


