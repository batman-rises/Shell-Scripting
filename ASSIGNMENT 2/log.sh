#!/bin/bash

# Check if exactly 1 argument is given
if [[ $# -ne 1 ]]
then
    echo "Enter only 1 input"
    exit 1
fi

n=$1

# Check if input is numeric
if ! [[ $n =~ ^[0-9]+$ ]]
then
    echo "Enter a valid positive number"
    exit 1
fi

# Check if number > 0
if (( n <= 0 ))
then
    echo "Number must be greater than 0"
    exit 1
fi

# Calculate log10 using natural log formula
res=$(echo "scale=4; l($n)/l(10)" | bc -l)

# Print only 2 decimal places
printf "Common Logarithm (base 10) of %d is %.2f\n" "$n" "$res"