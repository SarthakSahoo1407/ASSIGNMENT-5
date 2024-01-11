#!/bin/bash

echo "Directories:"
for item in *; do
  if [ -d "$item" ]; then
    echo "$item"
  fi
done

echo
echo "Non-executable files:"
for item in *; do
  if [ -f "$item" ] && [ ! -x "$item" ]; then
    echo "$item"
  fi
done
