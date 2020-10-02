#!/bin/bash



  case $1 in
"sum") echo "$(($2 + $3))";;
"sub") echo "$(($2 - $3))";;
"mul") echo "$(($2 * $3))";;
"div") [[ "$3" -eq 0 ]] && echo "error" || echo "$(($2 / $3))";;
*)
echo "command is not found">&2

esac
