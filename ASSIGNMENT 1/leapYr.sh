#!/bin/bash
read -p "enter year" yr
if  (( yr % 400 == 0)) || (( yr%4==0 && yr%100 !=0 ))
then
        echo "$yr is a leap year"
else
        echo "not a leap yr"
fi
