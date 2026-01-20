#!/bin/bash

LOG_DIR="/var/log"
BACKUP_DIR="$HOME/log_backup"

mkdir -p $BACKUP_DIR

tar -czf $BACKUP_DIR/log_backup_$(date +%F).tar.gz $LOG_DIR

find $LOG_DIR -type f -name "*.log" -mtime +7 -delete

echo "Log cleanup completed"

