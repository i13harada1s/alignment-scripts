#!/bin/bash

# check parameter count and write usage instruction
if (( $# != 3 )); then
  echo "Usage: $0 source_path target_path output_path"
  exit 1
fi

# paste with ~ as delimiter | remove empty source or target lines
paste -d "~" $1 $2 | sed 's/~/ ||| /g' | sed -e '/^ |||/d' -e '/||| $/d' > ${3}

