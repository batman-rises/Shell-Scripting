#!/bin/bash
if [ $# -lt 1 ]
then
        echo "enter a valid number"
        exit 1
fi
sum=0
for arg in $@
do
        sum=$((sum+arg))
done
echo "$sum"
