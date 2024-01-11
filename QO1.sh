#!/bin/bash
count=1
while [ $count -le 10 ]
do
    echo "Enter no of hours employee $count has worked"
    read hours
    if [ $hours -gt 40 ]
    then
        ot=$((hours - 40))
        otpay=$((ot * 12))
        echo "Employee $count has worked $hours hours. Overtime pay is Rs $otpay"
    else
        echo "Employee $count has not worked overtime, so no overtime pay"
    fi
    count=$((count + 1))
done

