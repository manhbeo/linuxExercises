#!/bin/bash

mkdir five

for i in {1..5}; do
    mkdir five/dir"$i";

    for file in /five; do
	
	for y in {1..4}; do
	    
	    touch five/dir"$i"/file"$y".txt;

	    for x in $(seq $y);do
		echo $y >> five/dir$i/file$y.txt
	    done
	done
    done
done
