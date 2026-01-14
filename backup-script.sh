#! /bin/bash

#backup Script
#This script runs everyday at 10AM using crontab


source_dist="/home/vimal/Documents"
dest_dist="/home/vimal/Backup"

mkdir -p "$dest_dist"

rsync -av --delete "$source_dist"  "$dest_dist"

echo "Backup completed at $(date)"




