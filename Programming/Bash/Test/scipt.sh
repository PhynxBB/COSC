#!/bin/bash
ans=$(cat $1)
for i in $ans
do
    find $i -maxdepth 1 -type f 2>/dev/null | wc -l 
done
