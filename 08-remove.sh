#!/bin/bash

current_date=$(date +"%Y%m%d")
old_date=$(date -d "-30 days" +"%Y%m%d")
cd $1

for file in $(ls backup)
do
    if [[ ${file:0:8} < $old_date ]]; then

    # usuwanie
    rm -f "backup/$file"

    fi

done