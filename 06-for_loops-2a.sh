#!/bin/bash

current_dir=$1
backup_dir="$current_dir/backup"
prefix=$(date +"%Y%m%d_")

if [ ! -d "$backup_dir" ]; then
    mkdir $backup_dir
fi

for file in $(ls $current_dir)
do
    if [ -f "$current_dir/$file" ]; then
        cp "$current_dir/$file" "$backup_dir/$prefix$file"
    fi

done