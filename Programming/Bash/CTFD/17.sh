#!/bin/bash

defaultGateway=$(ip route | awk '/default/ {print $3}')
pingPath=$(which ping)
pingTest=$($pingPath -c6 $defaultGateway | grep -o "6 received")

if [[ $pingTest == "6 received" ]];
then
    echo successful
else
    echo failure
fi

echo Default Gateway: $defaultGateway
echo Ping Path: $pingPath
echo Results of Ping Test: $pingTest
