#!/bin/bash
read -p "enter a number" n
fact=1
if ((n<0))
then
        echo "enter a valid number"
else
        for((i=1;i<=n;i++))
        do
                fact=$((fact*i))
        done
        echo "factorial of $n is $fact"
fi
