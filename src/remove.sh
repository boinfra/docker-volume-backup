if [ -d "$BACKUP_ARCHIVE" ]; then
  find "$BACKUP_ARCHIVE"* -mtime +"$DELETE_BACKUP_AGE" -exec rm {} \;
fi