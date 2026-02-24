#!/bin/bash
read -p "enter the number" n
if (( n<0))
then
        echo "enter a valid number"
        exit 1
fi
sum=0
temp=$n
while ((n>0))
do
        a=$((n%10))
        sum=$((sum + a))
        n=$((n/10))
done
echo "Sum of digits of $temp is $sum"
