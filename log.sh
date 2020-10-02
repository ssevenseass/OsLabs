#!/bin/bash

  name=/var/log/anaconda/X.log

 sed -n 's/] (WW)/] Warning:/p' $name > filename
 sed -n 's/] (II)/] Information:/p' $name >> filename

GREP_COLOR="1;33" grep --color="always" "Warning" filename
GREP_COLOR="1;34" grep --color="always" "Information" filename
rm filename
