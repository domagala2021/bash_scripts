#!/bin/bash


backup_dir="backup"
prefix=$(date +"%Y%m%d_")

if [ ! -d "$backup_dir" ]; then
    mkdir $backup_dir
fi

    for file in *.*
do
    cp $file "$backup_dir/$prefix$file"
    # echo "$prefix$file"

done