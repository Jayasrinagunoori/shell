#!/bin/bashUSERID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log"
TIME_STAMP=$(date "+%Y-%m-%d %H:%M:%S")
if [$USERID -ne 0]; then
  echo "please run this script with root access"

fi