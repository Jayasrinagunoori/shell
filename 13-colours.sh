#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run this script using root access"
    exit1
fi

VALIDATE (){
    if [ $2 -ne 0 ]; then
        echo  "installing $1 is FAILED
        exit1
    
        else 
        echo "Installing $1 is SUCCESS"
    fi
}

for package in $@
do 
  echo "Installing $package"
  dnf list installed $package
  if [ $? -ne 0 ]; then
    dnf install $package -y
    VALIDATE "$package"

  else
    echo " $package already installed...SKIPPING"
fi
done