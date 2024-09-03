#!/bin/bash


backup_dir="/home/domagala2021/bash_scripts/backup"

if [ ! -d "$backup_dir" ]; then
    mkdir $backup_dir
fi

for file in *.*
do
    cp $file $backup_dir
done