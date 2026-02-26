#!/bin/bash

read -p "Enter a positive integer: " num

# Validate input
if ! [[ $num =~ ^[0-9]+$ ]] || (( num <= 0 ))
then
    echo "Please enter a valid positive integer"
    exit 1
fi

# i) Square root (using bc)
sqrt=$(echo "scale=2; sqrt($num)" | bc)

echo "Square root of $num is $sqrt"

# ii) Decimal to Hexadecimal
hex=$(printf "%X" "$num")

echo "Hexadecimal of $num is $hex"