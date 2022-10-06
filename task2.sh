#!/bin/sh
filepath="\Users\stebe\OneDrive\Desktop\HW"
# Command to execute
execute_cmd=mv

# Files inside actual_dir has to be moved
actual_dir="$filepath/HW"

# This is the directory where files will be moved and kept
backup_dir="$filepathp/empty_files"

# Move each file from actual_dir to backup_dir

echo "Moving empty files to backup_dir"

for f in $(find $actual_dir . -maxdepth 1 -type f -empty); ## find empty file size 
do
	 echo $f
	  $execute_cmd $f $backup_dir
  done

  echo "Moving of files completed"
