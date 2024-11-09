#!/bin/bash

USERID=$(id -u)
 
if [ $USERID -ne 0]
then
  echo "please run this script with root acess"
  exit 1
else
  echo "youre a super user"
fi
 
 dnf install mysql -y

if [ $? -ne 0 ]
then
  echo "installation of mysql Failure"
  exit 1
else
  echo "installation of mysql Success"
fi 

echo "script processiding"