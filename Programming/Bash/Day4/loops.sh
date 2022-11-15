#!/bin/bash

# For Loop
for i in {0..10}
do
    echo $i
done

for i in {dog,cat,snake,hamster} # Don't include whitespace within list
do
    echo $i
done

for i in $(cat /etc/passwd | awk -F: '{print $1}')
do 
    echo User: $i
done

function cents_or_dollars () {
    counter=1
    while [[ $counter -le 10 ]]
    do
        echo "Current Cent Count: $counter"
        ((counter++))
    done
    echo "Final Total: $counter"
}
cents_or_dollars

function autobots () {
    counter=1
    until [[ $counter -eq 10 ]]
    do
        echo $counter
        ((counter++))
    done
}

function countloop () {
    start=1
end=5
for ((i=start; i<=end; i++))
