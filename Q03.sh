#!/bin/bash

echo "File -- Size"
echo "------------------------"

for filename in "$@"; do
  if [[ -f "$filename" ]]; then
    size=$(stat -f%z "$filename")
    echo "$filename	 $size"
  else
    echo "$filename: Not a regular file"
  fi
done
