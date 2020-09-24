#!/bin/bash

function log() {

  information="\\(II\\)"
  warning="\\(WW\\)"
 grep -E -h -s $information /var/log/anaconda/X.log | sed -E "s/$information/Information: /" >> filename.log
 grep -E -h -s $warning /var/log/anaconda/X.log | sed -E "s/$warning/Warning: /" >> filename.log
}

