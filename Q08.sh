#!/bin/bash

# Check if the number of arguments is even or odd
if [ $# -eq 0 ]; then
  echo "Error: No files provided."
elif [ $(( $# % 2 )) -eq 1 ]; then
  echo "Error: Odd number of files provided. No copying will take place."
else
  # Copy files pairwise
  for ((i = 1; i <= $#; i += 2)); do
    cp "${!i}" "${@:i+1:1}"
    echo "Copied: ${!i} to ${@:i+1:1}"
  done
fi
