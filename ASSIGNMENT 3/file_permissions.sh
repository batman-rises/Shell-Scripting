#!/bin/bash
read -p "enter your choice -> 1. show permission 2. show no of files & directories 3. show last modificate date & time of file 4.exit" ch
case $ch in
        1)
                read -p "enter file name :" name
                ls -ld $name
                ;;
        2)
                echo " no of files :"
                ls -l | grep "^-" | wc -l
                echo " no of directories :"
                ls -l | grep "^d" | wc -l
                ;;
        3)
                read -p "enter file name :" name
                ls -l $name | awk '{print $6,$7,$8}'
                ;;
        4)
                exit 0
                ;;
        *)
                echo "invalid choice"
                exit 1
                ;;
esac

