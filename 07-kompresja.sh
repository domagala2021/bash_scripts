#!/bin/bash

current_date=$(date +"%Y%m%d")
new_date=$(date -d "-2 days" +"%Y%m%d")
cd $1


for file in $(ls backup)
do
    if [[ ${file:0:8} < $new_date ]]; then 
    #kompresja 
    gzip "backup/$file"
    # echo $file >> test.txt
    
    fi

done