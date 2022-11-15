#!/bin/bash

find /bin /etc /var -maxdepth 3 ! -type p -exec md5sum {} \; 2>> unsuc.log 1>> suc.log

grep -v "denied" unsuc.log > unsucf.log
cat unsucf.log > unsuc.log

unsuc=$(wc -l unsuc.log | awk '{print $1}')
suc=$(wc -l suc.log | awk '{print $1}')

echo Successfully Hashed Files: $suc
echo Unsuccessfully Hashed Directories: $unsuc
