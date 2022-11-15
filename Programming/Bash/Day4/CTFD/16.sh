#!/bin/bash

FILE=$HOME/.ssh
if [[ -d "$FILE" ]];
then
    echo "Success"
    mkdir $HOME/SSH
    cp -a $HOME/.ssh/. $HOME/SSH
else
    echo "Run ssh-keygen"
fi
