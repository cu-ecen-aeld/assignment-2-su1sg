#!/bin/sh
# finder script for assignment 1 and assignment 2
# Author: SG
# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Two arguments are required."
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

writefile="$1"
writestr="$2"


# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Attempt to write the string to the file
if echo "$writestr" > "$writefile"; then
    echo "File created successfully: $writefile"
    exit 0
else
    echo "Error: Could not create file $writefile"
    exit 1
fi