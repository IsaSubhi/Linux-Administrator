#!/bin/bash

for ((i=$#; i>=1; i--)); do
    echo ${!i}
done

echo

#alternative solution
for arg; do
    rev_arg=$arg"\n"$rev_arg
done
printf $rev_arg
