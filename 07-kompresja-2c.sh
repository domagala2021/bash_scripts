#!/bin/bash

base_date=$(date -d "-2 days" +"%Y%m%d")

for file in $(ls backup)
do
	if [[ ${file:0:8} < $base_date ]]; then
        gzip "backup/$file"
	fi
done