#!/bin/bash
arr=("$@")
n=${#arr[@]} #must use curly braces
echo "original array : ${arr[@]}"  # here too
for((i=0;i<=n-2;i++))
do
        mini=$i
        for((j=i;j<n;j++))
        do
                # if ((arr[j] < arr[mini]))
                if (( ${arr[j]} < ${arr[mini]}))
                then
                        mini=$j
                fi
        done
        temp=${arr[mini]}
        arr[mini]=${arr[i]}
        arr[i]=${temp}
done
echo "sorted array : ${arr[@]}"
