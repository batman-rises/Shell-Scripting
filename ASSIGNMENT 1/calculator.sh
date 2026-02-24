#!/bin/bash
echo "menu driven"
echo "enter your choice -> 1.addition 2.subtraction 3.multiplication 4.division 5.exit"
read ch
case $ch in
        1)
                read -p "enter a" a
                read -p "enter b" b
                echo "addition is : $((a+b))"
                ;;
        2)
                echo $((5-4))
                ;;
        3)
                echo $((5*4))
                ;;
        4)
                echo "quootient is : $((10/3))"
                echo "remainder is : $((10%3))"
                ;;
        5)
                echo "exiting program"
                exit 0
                ;;
        *)
                echo "invalid choice"
                ;;
esac

