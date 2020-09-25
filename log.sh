#!/bin/bash

  name=/var/log/anaconda/X.log
 if ! [[ -f $name ]]; then
  echo "error" > /dev/stderr
 bash help.sh
  echo exit 1;
 else

  info="\\(II\\)"
  warn="\\(WW\\)"
 grep -E -h -s $warn  $name  | sed -E "s/$warn/Warning: /" > filename.txt
 grep -E -h -s $info $name | sed -E "s/$warn/Information: /" > filename.txt

GREP_COLOR="1;33" grep --color="always" "Warning" filename.txt
GREP_COLOR="1;34" grep --color="always" "Information" filename.txt
 rm filename.txt

fi
