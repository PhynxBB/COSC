#!/bin/bash

for i in $(find /etc -type f -exec stat -c %a {} \; 2>/dev/null)
do
    if [ $i -gt 641 ]
    then
        echo $i >> high.txt
    else
        echo $i >> low.txt
    fi
done

echo Files w/ OCTAL Perm Values 642+:
cat high.txt | sort | uniq -c | sort -r
echo
echo Files w/ OCTAL Perm Values 0-640:
cat low.txt | sort | uniq -c | sort -r
