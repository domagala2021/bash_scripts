#!/bin/bash


backup_dir="backup"

if [ ! -d "$backup_dir" ]; then
    mkdir $backup_dir
fi

for file in *.*
do
    cp $file $backup_dir
done