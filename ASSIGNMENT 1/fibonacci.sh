#!/bin/bash
read -p "enter the number" n
if (( n<0))
then
        echo "enter a valid number"
        exit 1
fi
first=0
second=1
#echo "$first $second"
for ((i=1;i<=n;i++))
do
        echo "$first "
        x=$((first+second))
        first=$second
        second=$x
        #echo " $x"
done
echo "END"
