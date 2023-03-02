#!/bin/bash

sum=0
i=1000

while [[ $i -le 2000 ]]; do
    j=$i
    ok=1
    while [[ $j -gt 0 ]]; do
	if [[ ($(($j % 10)) -ne 0) && ($(($j % 10)) -ne 1) ]]; then
	     ok=0
	     break
	fi
	#echo $j
	j=$(($j/10))
    done
    #echo $i
    if [[ $ok -eq 1 ]]; then
	sum=$(($sum+1))
    fi
    i=$(($i+1))
done

echo $sum
