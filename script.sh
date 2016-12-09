#!/bin/bash
while IFS='' read -r line || [[ -n "$line" ]]; do
   # echo "$line" | xargs
   git branch "$line" | sed 's/^ *//g'
done < "$1"
