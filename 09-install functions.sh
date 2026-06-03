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
# echo "I am continuing..."
dnf list installed mysql

if [ $? -eq 0 ]; then
    echo "MySQL is already installed ... SKIPPING"
else
    echo "Installing MySQL"
    dnf install mysql -y
    VALIDATE MySQL $?
fi

    echo "I Am Contining..."
    dnf list instlled Mysql

if [$? -eq 0]; then
    echo  "MySql is already installed... SKIPPING"
else 
    echo "Valiadte Mysql $"?

    fi

dnf list insatll nginx

if[$? -eq 0];then

echo "Nginx is already installed...SKIPPING"

else
echo "Installing nginx"
dnf install nginx -y
VALIDATE nginx $?

fi
