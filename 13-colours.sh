#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log"

if [ $USERID -ne 0 ]; then
    echo "please run this script using root access"
    exit1
fi

VALIDATE (){
    if [ $2 -ne 0 ]; then
        echo -e "Installing $1 is FAILED" | tee -a $LOGS_FILE
        exit1
    
        else 
        echo -e "Installing $1 is SUCCESS" | tee -a $LOGS_FILE
    fi
}

for package in $@
do 
  echo "Installing $package"
  dnf list installed $package &>> $LOGS_FILE
  if [ $? -ne 0 ]; then
    dnf install $package -y &>> $LOGS_FILE
    VALIDATE "$package" $?

  else
    echo " $package already installed...SKIPPING"
fi
done