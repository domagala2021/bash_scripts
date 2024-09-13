#!/bin/bash

current_dir="/home/domagala2021/bash_scripts"
backup_dir="$current_dir/backup"
prefix=$(date +"%Y%m%d_")

if [ ! -d "$backup_dir" ]; then
    mkdir $backup_dir
fi

for file in $(ls $current_dir)
do
    cp "$current_dir/$file" "$backup_dir/$prefix$file"
    # echo "$prefix$file"

done