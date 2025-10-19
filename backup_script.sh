#!/bin/bash

# create a backup of all my scripts

function create_backup() {
	local source_dir=$1
	local backup_dir=$2
	local timestamp="$(date +%Y%m%d_%H%M%S)"

	echo "creating backup of $source_dir..."
	tar -czf "$backup_dir/backup_$timestamp.tar.gz" "$source_dir"
	echo "Backup completed: backup_$timestamp.tar.gz"
}
	
function check_backup_dir() {
	if [ ! -d "$1" ]; then
		echo "backup directory doesn't exist. Creating one..."
		mkdir -p "$1"
	fi
}

BACKUP_DIR=./backups
SOURCE_DIR=./file_to_backup

check_backup_dir "$BACKUP_DIR"
create_backup "$SOURCE_DIR" "$BACKUP_DIR"
