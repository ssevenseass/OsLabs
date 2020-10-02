#!/bin/bash


  [[ -d "$1" ]] && "directory is not found">&2
 grep -r $2 $1 2>/dev/null


