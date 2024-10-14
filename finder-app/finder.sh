#!/bin/sh
# finder script for assignment 1 and assignment 2
# Author: SG
# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Two arguments are required."
    echo "Usage: $0 <filesdir> <searchstr>"
    exit 1
fi

filesdir="$1"
searchstr="$2"

# Check if filesdir is a directory
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a directory."
    exit 1
fi

# Count the number of files
file_count=$(find "$filesdir" -type f | wc -l)

# Count the number of matching lines
match_count=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Print the result
echo "The number of files are $file_count and the number of matching lines are $match_count"