#!/bin/bash

for arg in "$@"; do
  if [ -d "$arg" ]; then
    echo "$arg is a directory"
  elif [ -f "$arg" ]; then
    echo "$arg has $(wc -l < "$arg") lines"
  else
    echo "$arg is not a file or directory"
  fi
done
