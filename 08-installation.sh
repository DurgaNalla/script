#!/bin/bash

USER=$(id -u)
 
if [ $USER -ne 0]
then
  echo "your'e not a super user"
  exit 1
else
  echo "your'e a super user"
fi
 
 dnf install mysql -y

if [$? -ne 0]
then
  echo "installation of mysql Failure"
  exit 1
else
  echo "installation of mysql Success"
fi 

echo "script processiding"