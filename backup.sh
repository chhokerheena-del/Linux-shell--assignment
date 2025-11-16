#!/bin/bash
# -------------------------------------------------------
# Script Name: backup.sh
# Purpose: Backs up a directory to a backup folder with a timestamp
# Author: Heena
# Date: $(date +"%Y-%m-%d")
# -------------------------------------------------------

# Directory to backup
SOURCE_DIR="$HOME/myfolder"

# Destination backup folder
BACKUP_DIR="$HOME/backups"

# Create backup folder if not exists
mkdir -p "$BACKUP_DIR"

# Timestamp
TIME_STAMP=$(date +"%Y%m%d_%H%M%S")

# Backup file name
BACKUP_NAME="backup_$TIME_STAMP.tar.gz"

# Create backup
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

echo "Backup completed: $BACKUP_DIR/$BACKUP_NAME"
