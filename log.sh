#!/bin/bash

  name=/var/log/anaconda/X.log
  if ![[ -f $name ]]; then
echo "error" > /dev/stderr
  bash help.sh
echo exit 1;
 else

 sed -n 's/] (WW)/] Warning/p' $name > filename.txt
 sed -n 's/] (II)/] Information/p' $name > filename.txt

 GREP_COLOR="1;33" grep --color="always" "Warning" filename.txt
 GREP_COLOR="1;34" grep --color="always" "Information" filename.txt
  rm filename.txt
fi

