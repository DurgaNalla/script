#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 10 ]
then
   echo " $NUMBER is GREATER"
else
   echo "$NUMBER is LESSER"
fi