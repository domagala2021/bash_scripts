#!/bin/bash

base_date=$(date -d "-2 days" +"%Y-%m-%d")
base_date2=$(date -d "$base_date" +%s)

for file in $(ls backup)
do
    rok=${file:0:4}
    miesiac=${file:4:2}
    dzien=${file:6:2}
    file_date=$(date -d "$rok-$miesiac-$dzien" +"%Y-%m-%d")
    file_date2=$(date -d "$file_date" +%s)

    if [ $file_date2 -lt $base_date2 ]; then
		gzip "backup/$file"
	fi
done