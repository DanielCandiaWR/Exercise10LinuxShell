#!/bin/bash
# Given N integers, compute their average correct to three decimal places
# The first line contains an inteer, N
# N lines follow. each containing a single integer
echo "How many numbers do you want to calculate the average? "
read numbersSize
average=0
for number in $(seq 1 $numbersSize);
do
    echo "Input the number $number: "
    read number
    let average+=$number

done
echo "The average is: "
printf "%.3f" $(echo $average/$numbersSize | bc -l)