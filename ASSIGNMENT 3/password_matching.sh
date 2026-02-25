#!/bin/bash
while true
do
read -p "enter choice -> 1.enter user details 2.show details 3.exit" ch
case $ch in
        1)
                read -p "enter name" name
                read -p "enter roll" roll
                read -p "enter password" pw
                echo "$pw|$name|$roll" > personal.dat
                ;;
        2)
                if [ ! -f personal.dat ]
                then
                        echo "no data found"
                else
                        read -s -p "enter password" dummy
                        echo
                        storedPW=$(cut -d "|" -f1 personal.dat)
                        if [ $dummy = $storedPW ]
                        then
                                cut -d "|" -f1- personal.dat
                        else
                                echo "invalid password"
                        fi
                fi
                ;;
        3)
                exit 0
                ;;
        *)
                echo "invalid choice -- retry"
                ;;
esac
done
