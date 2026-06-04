#!/bin/bash

USERID=$(id -u)
LOGS_DIR=/var/log/shell-script
LOGS_FILE="$LOGS_DIR/$0.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo "please run this script using root access"
    exit1
fi

VALIDATE (){
    if [ $2 -ne 0 ]; then
        echo -e "Installing $1 is $R FAILED $N" | tee -a $LOGS_FILE
        exit1
    
        else 
        echo -e "Installing $1 is $Y SUCCESS $N" | tee -a $LOGS_FILE
    fi
}

for package in $@
do 
  echo "$G Installing $N $package"
  dnf list installed $package &>> $LOGS_FILE
  if [ $? -ne 0 ]; then
    dnf install $package -y &>> $LOGS_FILE
    VALIDATE "$package" $?

  else
    echo " $package already installed...$G SKIPPING $N"
fi
done