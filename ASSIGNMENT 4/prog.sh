#!/bin/bash
while true
do
        echo "1. sorting 2. convert to uppercase 3.unique name recored 4.display 2nd&3rd lines 5.exit"
        read -p "enter your choice" ch

        case $ch in
                1)
                        sort -t "|" -k2 -nr student.dat > sorted.dat
                        echo "sorted data created"
                        printf "\n"
                        ;;
                2)
                        tr 'a-z' 'A-Z' < sorted.dat > temp
                        mv temp sorted.dat
                        echo "names converted to uppercase\n"
                        ;;
                3)
                        cut -d "|" -f1 sorted.dat | sort | uniq > names
                        grep -Ff names sorted.dat >> students.dat
                        rm names
                        echo "unique names appended\n"
                        ;;
                4)
                        head -n 3 student.dat | tail -n 2
                        ;;
                5)
                        exit 1
                        ;;
                *)
                        echo "invalid choice"
                        ;;
                esac
done
