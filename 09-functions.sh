#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

validate(){
 if [ $1 -ne 0 ]
 then 
  echo "$2 is failure"
  exit 1
 else
  echo "$2 is success"
 fi
}
 
if [ $USERID -ne 0 ]
then
  echo "please run this script with root acess"
  exit 1
else
  echo "youre a super user"
fi

 
 dnf install mysql -y &>>LOGFILE
 validate $? "installing mysql" 

echo "script processiding"