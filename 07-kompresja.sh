#!/bin/bash

current_date=$(date +"%Y%m%d")
new_date=$(date -d "-2 days" +"%Y%m%d")


for file in $(ls backup)
do
    if [[ ${file:0:8} < $new_date ]]; then 
    #kompresja 
    gzip "backup/$file"
    fi

done