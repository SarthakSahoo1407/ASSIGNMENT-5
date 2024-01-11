#!/bin/bash

# Iterate through files in the current directory
for file in *; do
    # Check for read permission
    if [[ -r "$file" ]]; then
        echo "$file (Read Permission)"
    fi

    # Check for write permission
    if [[ -w "$file" ]]; then
        echo "$file (Write Permission)"
    fi

    # Check for execute permission
    if [[ -x "$file" ]]; then
        echo "$file (Execute Permission)"
    fi
done
