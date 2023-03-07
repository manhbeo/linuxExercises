#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "usage: $0 <dir> <n>" 1>&2
    exit 0
fi 

size=$2
dirname=$1

cd $dirname
find -type f -size +${size}c |
    { while read n;
         do rm -r $n;
      done; }

    
