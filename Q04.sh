#!/bin/bash
while true; do
  echo "Enter a filename or type 'exit' to quit"
  read filename
  
  if [ "$filename" = "exit" ]; then
    echo "Exiting..."
    exit
  fi

  if [ -f "$filename" ]; then
    echo "File name:"
    echo "$filename"
    echo "............."
    cat "$filename"
  else
    echo "File not found: $filename"
  fi
done
