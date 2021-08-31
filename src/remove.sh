#!/bin/bash

# Cronjobs don't inherit their env, so load from file
source env.sh

function info {
  bold="\033[1m"
  reset="\033[0m"
  echo -e "\n$bold[INFO] $1$reset\n"
}


if [ -d "$BACKUP_ARCHIVE" ] && [ $DELETE_BACKUP_AGE != -1 ]; then
  info "Remove starting"
  find "$BACKUP_ARCHIVE"* -mtime +$DELETE_BACKUP_AGE -exec rm {} \;
  info "Remove finished"
fi