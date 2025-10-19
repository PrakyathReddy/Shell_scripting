#!/bin/bash

# iterate through a list of files. If it doesn't exist, create one

FILES="file1.txt file2.txt file3.txt"

for file in $FILES; do
	if [ -f "$file" ]; then
		echo "processing $file..."
		wc -l $file
	else
		echo "file doesn't exist. Creating one..."
		touch $file
	fi
done
