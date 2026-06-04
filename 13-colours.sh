#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "please run this script using root access"
exit1
fi

for package in $@
do 
  echo "Installing $package"
  dnf list installed $package
  if [ $? -ne 0 ]; then
  dnf install package -y
  echo "$package installed"

else
echo " $package already installed...SKIPPING"
fi
done