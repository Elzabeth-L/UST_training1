#!/bin/bash

#Configuration
SOURCE_DIR="/c/Users/307373/Documents/data"   # Folder to backup
BACKUP_DIR="/c/Users/307373/Documents/backups"  # Where backups are stored
LOGFILE="$BACKUP_DIR/backup.log"
RETENTION_DAYS=7

#Timestamp for backup file
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

#Backup and compress
if tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" . ; then
    echo "$DATE - SUCCESS: Backup created -> $BACKUP_FILE" | tee -a "$LOGFILE"
else
    echo "$DATE - ERROR: Backup failed!" | tee -a "$LOGFILE"
    exit 1
fi

#Delete old backups based on retention policy
find "$BACKUP_DIR" -maxdepth 1 -name "backup_*.tar.gz" -type f -mtime +$RETENTION_DAYS -exec rm -f {} \;
echo "$DATE - INFO: Old backups older than $RETENTION_DAYS days deleted." | tee -a "$LOGFILE"
echo "Status logged"
