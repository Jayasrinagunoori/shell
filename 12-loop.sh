#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log" 
TIME_STAMP=$(date "+%Y-%m-%d %H:%M:%S")

# Check root access or not

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root acess"
    exit 1
fi

VALIDATE(){
    if [ $2 -ne 0 ]; then
    echo "$Time_Stamp [ERROR]Installing is $1 is ...failes" | tee -a $LOGS_FILE

    else

    echo "$Time_Stamp [INFO]Installing $1 is ....Success" | tee -a $LOGS_FILE

    fi
}

for package in $@
do
    echo "$TIMESTAMP [INFO] Installing $package"
    dnf list installed $package &>> $LOGS_FILE
    if [ $? -ne 0 ]; then
        dnf install $package -y &>> $LOGS_FILE
        VALIDATE " $package" $?
    else
        echo "$TIMESTAMP [INFO] $package already installed ... SKIPPING"
    fi
done