#!/bin/bash

read -p "Enter username: " name

# Regex check
if [[ $name =~ ^[a-z][a-z0-9]{2,15}$ ]]
then
    echo "Valid username"
else
    echo "Invalid username"
fi