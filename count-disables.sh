#!/bin/sh

ARG=$1
DIR=${ARG:-.}
echo "Searching directory: $DIR"
echo

# Courtesy of http://macr.ae/article/counting-eslint-disabled.html
grep -r 'eslint-disable' -h $DIR |    # Find all lines containing "eslint-disable"
    sed -E 's/^.*\/[*/] | \*\/|,//g' | # Remove whitespace and brackets
    tr ' ' '\n' |                      # Put every word on own line
    grep -v 'eslint' |                 # Remove every line containing "eslint"
    sort |                             # Sort rules so the same rule is grouped together
    uniq -c |                          # Count number of occurances of each rule
    sort -bgr                          # Sort by number of occurances from greatest to lowest

echo
echo "Done!"
