#!/bin/bash

  name=/var/log/anaconda/X.log
 if ! [[ -f $name ]]; then
  echo "error" > /dev/stderr
 bash help.sh
  echo exit 1;
 else

 sed "s/] (WW)/] Warning:/p" $name > filename
 sed "s/] (II)/] Information:/p" $name > filename

GREP_COLOR="1;33" grep --color="always" "Warning" filename
GREP_COLOR="1;34" grep --color="always" "Information" filename

 cat  filename
fi

