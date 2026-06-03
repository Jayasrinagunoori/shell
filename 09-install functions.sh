#!/bin/bash

USERID=$(id -u)

# Check root access or not
if [ $USERID -ne 0 ]; then
    echo "Plase run the script with root access"

    fi

    VALIDATE (){
    if [ $2 -ne 0 ]; then
        echo "Installing $1 is ... FAILED"
        exit 1
    else
        echo "Installing $1 is ... SUCCESS"
    fi
}


#echo "I Am Contining..."
 dnf list instlled Mysql

if [$? -eq 0]; then
    echo  "MySql is already installed... SKIPPING"
else 

echo "Installing mysql
dnf install mysql -y
 echo "Valiadte Mysql $"?

fi

dnf list insatlled nginx

if[$? -eq 0];then

echo "Nginx is already installed...SKIPPING"

else
 echo "Installing nginx"
 dnf install nginx -y
 VALIDATE nginx $?

fi
